# Active-Directory

This project was produced on a virtual active directory, using Hyper-V manager, creating OU's, groups, and group policies on a local machine; along with scenarios. 

# Active Directory Tier-1 Helpdesk Lab

This project is a hands-on Active Directory lab built to demonstrate practical skills used in Help Desk and IT Specialist roles. It covers domain controller setup, organizational structure, security groups, and real-world Tier-1 account management tasks using PowerShell.

## Skills Demonstrated

- Active Directory Domain Services (AD DS)
- Domain Controller promotion and configuration
- Organizational Unit (OU) design
- Security Group management
- Tier-1 Help Desk tasks (account unlock, password reset, group membership, onboarding)
- PowerShell scripting for Active Directory administration
- Structured ticket documentation and troubleshooting process

## Lab Environment

- **Hypervisor:** Hyper-V
- **Operating System:** Windows Server 2025 Standard (Desktop Experience)
- **Domain:** `lab.local`
- **Domain Controller:** `DC01`
- **IP Address:** 192.168.1.10


## Active Directory Structure

**Organizational Units:**
- `Corp`
  - `Users`
  - `Computers`
  - `Groups`
  - `Servers`

**Security Groups:**
- `GG-HelpDesk`
- `GG-IT-Admins`
- `GG-Sales`
- `GG-All-Staff`

## PowerShell Scripts

| Script                  | Purpose                                      |
|-------------------------|----------------------------------------------|
| `Unlock-Account.ps1`    | Unlocks a locked Active Directory account    |
| `Reset-Password.ps1`    | Resets a user password and forces change at next logon |
| `Add-UserToGroup.ps1`   | Adds a user to a security group              |
| `Get-UserInfo.ps1`      | Retrieves account status, last logon, and group memberships |

### Example Usage

```powershell 
.\Unlock-Account.ps1 -Username jsmith
.\Reset-Password.ps1 -Username sjohnson -NewPassword "TempP@ss123!"
.\Add-UserToGroup.ps1 -Username mdavis -GroupName "GG-Sales"
.\Get-UserInfo.ps1 -Username jsmith
```

Tier-1 Ticket Scenarios
This lab includes five realistic Help Desk tickets that demonstrate common account management tasks:

Account Lockout – Unlock a locked user account
Password Reset – Reset a forgotten password
Add User to Group – Grant access by adding a user to a security group
New Hire Onboarding – Create a new user account and assign group memberships
User Info Lookup – Retrieve and report account details

Each ticket includes the issue description, steps performed, resolution, and notes.
Purpose
This project was built to strengthen practical Active Directory and PowerShell skills while documenting real Tier-1 support workflows. It is intended to support applications for Help Desk, Desktop Support, and IT Specialist roles.
