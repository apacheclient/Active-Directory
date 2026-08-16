Ticket 04 - New Hire Onboarding
Ticket Title: New Hire Account Creation
Priority: Medium
Category: Onboarding
User: New employee - Emily Carter
Issue Description
HR submitted a new hire request for Emily Carter. A new Active Directory account needs to be created and added to the appropriate groups.
Steps Performed

Received and verified the new hire request from HR.
Created the new user account in the correct OU (OU=Users,OU=Corp):

PowerShellNew-ADUser -Name "Emily Carter" -GivenName "Emily" -Surname "Carter" -SamAccountName "ecarter" -UserPrincipalName "ecarter@lab.local" -Path "OU=Users,OU=Corp,DC=lab,DC=local" -AccountPassword (ConvertTo-SecureString "Welcome123!" -AsPlainText -Force) -Enabled $true -ChangePasswordAtLogon $true

Added the user to the required groups:

PowerShellAdd-ADGroupMember -Identity "GG-All-Staff" -Members "ecarter"
Add-ADGroupMember -Identity "GG-Sales" -Members "ecarter"

Confirmed the account was created and group memberships were correct.

Resolution
New hire account for Emily Carter was successfully created and added to GG-All-Staff and GG-Sales. Temporary password was provided to HR/manager using the approved process. User will be forced to change the password at first logon.
Notes

Account created in the proper OU following department structure.
Used standard naming convention and security group assignment.