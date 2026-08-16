Ticket 03 - Add User to Group
Ticket Title: Access Request - Add User to Sales Group
Priority: Low
Category: Access Management
User: Mike Davis (mdavis)
Issue Description
Manager requested that Mike Davis be given access to the Sales resources. User needs to be added to the GG-Sales security group.
Troubleshooting Steps Performed

Verified the request with the appropriate manager/approver.
Confirmed the user account mdavis exists and is enabled.
Checked current group memberships for the user.

Used PowerShell to add the user to the required group:

PowerShell.\Add-UserToGroup.ps1 -Username mdavis -GroupName "GG-Sales"

Verified the user was successfully added to GG-Sales.

Resolution
User Mike Davis was successfully added to the GG-Sales group. Access to Sales resources should now be available (may require logoff/logon or token refresh).
Notes

Followed least-privilege and approval process before granting access.
Documented the change for audit purposes.