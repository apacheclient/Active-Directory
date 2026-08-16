# Get-UserInfo.ps1
# Displays useful information about an AD user

param (
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

try {
    $User = Get-ADUser -Identity $Username -Properties DisplayName, Enabled, LockedOut, PasswordExpired, LastLogonDate, MemberOf, Title, Department

    Write-Host "===== User Information =====" -ForegroundColor Cyan
    Write-Host "Name:            $($User.DisplayName)"
    Write-Host "Username:        $($User.SamAccountName)"
    Write-Host "Enabled:         $($User.Enabled)"
    Write-Host "Locked Out:      $($User.LockedOut)"
    Write-Host "Password Expired:$($User.PasswordExpired)"
    Write-Host "Last Logon:      $($User.LastLogonDate)"
    Write-Host "Title:           $($User.Title)"
    Write-Host "Department:      $($User.Department)"
    Write-Host ""
    Write-Host "Group Memberships:" -ForegroundColor Cyan
    $User.MemberOf | ForEach-Object { (Get-ADGroup $_).Name }
}
catch {
    Write-Host "Error retrieving user info: $_" -ForegroundColor Red
}