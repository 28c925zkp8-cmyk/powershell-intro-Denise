# LM3 Reading Assignment

## Reading Completed

Chapter 5 - Working with Providers

## Key Takeaways

1.  Providers let PowerShell treat data stores like drives and paths.
2.  The FileSystem provider is what I use when I cd, ls, and save files on C:\.
3.  Paths matter.  The Terminal only sees the folder I am currently in.  

## PowerShell Practice

### Current Location
Command:  Get-Location
Path
----
C:\powershell-intro\powershell-intro-Denise

### Three Items Found
Command:  ls

    Directory: C:\powershell-intro\powershell-intro-Denise

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d----           9/28/2026 12:39 PM                LM1
d----           9/28/2026 12:39 PM                LM2
d----           9/29/2026  7:55 PM                LM3
-a---           9/29/2026  7:40 PM            315 README.md

###  Variable Created
PS C:\powershell-intro\powershell-intro-Denise> $currentLocation = Get-Location
PS C:\powershell-intro\powershell-intro-Denise> $currentLocation

Path
----
C:\powershell-intro\powershell-intro-Denise
This stored and displayed the same past as Get-Location.

## AI Reflection

### Was the AI explanation useful?
Yes. It explained that a provider makes a data store look like a drive you can browse.  That matched opening folders in VS Code and using ls in the Terminal.

### What should be verified?
I would verify the official list of providers and example command with Get-PSProvider or Microsoft Learn before trusting extra names from AI.

## Final Reflection
The most useful concept from this reading was:
The FileSystem provider and current location.  My Git and script errors happened when I was in the wrong path.
The question I still have is:
I could not run Get-AzSubscription until the Az module is installed.  Is installing Az.Accounts and using Conect-AzAccount the correct way to get that command in this class?
