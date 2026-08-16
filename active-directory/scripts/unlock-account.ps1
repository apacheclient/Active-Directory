# Unlock-Account.ps1
# Unlocks an Active Directory user account

param (
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

try {
    Unlock-ADAccount -Identity $Username
    Write-Host "Successfully unlocked account: $Username" -ForegroundColor Green
}
catch {
    Write-Host "Error unlocking account: $_" -ForegroundColor Red
}