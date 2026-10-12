# AI Usage

Promp Used:
Help me build a PowerShell script that meets the LM8 Capstone requirements for Azure VM health monitoring, including colored output and summary.

AI Response Summary:
Provided a complet script structure using Get-AzVM -Status, Where-Object filtering, foreach loop, if logic for PowerState, and summary counters, plus the exact properties needed from teh VM objects.

What I Verified:
I ran Get-AzVM | Get-Member and Get-AzVM -Status | Get-Member myself, confirmed PowerState lives in the Statuses collection, and tested the script against my lab VMs.

How It Helped:
Saved time on syntax and property discovery while I still understood and verified every lines.