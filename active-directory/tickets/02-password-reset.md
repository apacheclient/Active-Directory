Ticket 02 - Password Reset
Ticket Title: Password Reset Request
Priority: Medium
Category: Account Management
User: Sarah Johnson (sjohnson)
Issue Description
User Sarah Johnson contacted the Help Desk stating she forgot her password and is unable to log in to her account.
Troubleshooting Steps Performed

Verified the user's identity (full name and username).
Confirmed the account sjohnson exists and is enabled in Active Directory.

Used PowerShell to reset the password and force a change at next logon:

PowerShell.\Reset-Password.ps1 -Username sjohnson -NewPassword "TempP@ss123!"

Provided the temporary password to the user over the approved communication method.
Instructed the user that she will be required to set a new password at next login.

Resolution
Password was successfully reset. User was able to log in with the temporary password and set a new permanent password. Confirmed the user could access resources normally.
Notes

Followed standard identity verification process before resetting the password.
Used the force change at next logon option for security best practice.