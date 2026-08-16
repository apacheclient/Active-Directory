# Reset-Password.ps1
# Resets a user's password and forces change at next logon

param (
    [Parameter(Mandatory=$true)]
    [string]$Username,

    [Parameter(Mandatory=$true)]
    [string]$NewPassword
)

Import-Module ActiveDirectory

try {
    $SecurePassword = ConvertTo-SecureString $NewPassword -AsPlainText -Force
    Set-ADAccountPassword -Identity $Username -NewPassword $SecurePassword -Reset
    Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
    Write-Host "Password successfully reset for: $Username" -ForegroundColor Green
    Write-Host "User must change password at next logon." -ForegroundColor Yellow
}
catch {
    Write-Host "Error resetting password: $_" -ForegroundColor Red
}