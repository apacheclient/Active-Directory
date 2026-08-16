Ticket 01 - Account Lockout
Ticket Title: User Account Locked Out
Priority: Medium
Category: Account Management
User: John Smith (jsmith)
Issue Description
User John Smith called the Help Desk stating he is unable to log in. He receives a message that his account is locked out.
Troubleshooting Steps Performed

Verified the user's identity using full name and username.
Opened Active Directory Users and Computers and located the user jsmith.
Confirmed the account showed as Locked Out.

Used PowerShell to unlock the account:

PowerShell.\Unlock-Account.ps1 -Username jsmith

Verified the account was successfully unlocked.
Asked the user to attempt login again.

Resolution
Account was successfully unlocked. User was able to log in. Advised the user on the company password policy and to contact the Help Desk if the issue reoccurs.

Root Cause
Multiple failed login attempts caused the account lockout policy to trigger.

