# Add-UserToGroup.ps1
# Adds a user to an Active Directory security group

param (
    [Parameter(Mandatory=$true)]
    [string]$Username,

    [Parameter(Mandatory=$true)]
    [string]$GroupName
)

Import-Module ActiveDirectory

try {
    Add-ADGroupMember -Identity $GroupName -Members $Username
    Write-Host "Successfully added $Username to $GroupName" -ForegroundColor Green
}
catch {
    Write-Host "Error adding user to group: $_" -ForegroundColor Red
}