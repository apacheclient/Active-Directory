Ticket 05 - User Info Lookup (Final Ticket)
Ticket Title: Account Status Check
Priority: Low
Category: Account Management
User: John Smith (jsmith)
Issue Description
Manager requested verification of John Smith's account status, last logon, and current group memberships before approving additional access.
Steps Performed

Verified the request.
Used PowerShell to retrieve detailed user information:

PowerShell.\Get-UserInfo.ps1 -Username jsmith

Reviewed the following details:
Account enabled status
Locked out status
Password expired status
Last logon date
Current group memberships


Resolution
Provided the manager with the requested account details. Confirmed the account is enabled, not locked, and currently a member of GG-Sales and GG-All-Staff.
Notes

Used standardized script for consistent and auditable information gathering.
No changes were made to the account.