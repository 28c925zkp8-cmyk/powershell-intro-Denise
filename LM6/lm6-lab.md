# LM6 Lab - Get-AzVM Observation

## a.  What information is dispayed

Running 'Get-AzVM' displays information about virtual machines, including:
- ResourceGroupName: POWERSHELL-INTRO-DENISE
- Name: PI-VM-Denise
- Location: centralus
- VmSize: Standard_D2as_v7
- OsType: Windows
- Nic: pi-vm-denise83
- ProvisioningState: Succeeded
- Zone: 1

## b. What information might help determine whether a VM is operational
- **ProvisioningState = Succeeded** indicates the VM was created and configured successfully.
- The pressence of a Name, Location, VmSize, and NIC shows the VM exitst and if fully defined.
- (Note: PowerState / Status is not shown in this basic output. Running 'Get-AzVM -Status' would also show whether the VM is currently running, stopped or dealloated.)

I ran the command in Azure Cloud Shell because authentication inside the VM terminal was not working with my student account.

## Task 2: VM Status Information

### Three useful properties
1. **PowerState** - Shows the current power state (running, deallocated, stopped.)
2. **ProvisioningState** - Indicates if the VM was successfully created/configured.
3. **StatusCode** or **DisplayStatus** - Provides a more detailed operational status message.

### Which proterty appears most important
**PowerState** is the most important for determining whether a VM is operational right now.

## Task 6: Improve the Report with AI

### a. The prompt used
Suggest one improvement to my Azure VM status report.

### b. The recommendation received
Add a report header and clearer comments so the output is easir to read.

### c. How you implemented the recommendation
Added Write-host statements for a header and a timestamp, plus improved comments at the top of the script.