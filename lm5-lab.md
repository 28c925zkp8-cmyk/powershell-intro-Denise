# LM5 Lab - Azure VM Objects

## Commands
 
Install-Module -Name Az -Repository PSGallery -Force
Connect-AzAccount
Get-AzVM
Get-AzVM | Get-Member

## Object type returned by Get-AzVm
 
Get-AzVM returned a Microsoft.Azure.Commands.Compute.Models.PSVirtualMachineList. Get-Member showed that TypeName. Each VM inside the list is a PSVirtualMachine object. The pipeline passes those objects, not text.
 
My VM row was:
- Resource group: POWERSHELL-INTRO-DENISE
- Name: PI-VM-Denise
- Location: crentralus
- Size: Standard_D2as_v7
- OS: Windows
- Provisioning state: Succeeded
 
## Three properties useful in a VM report
 
1. Name - identifies the virtual machine. Mine is PI-VM-Denise.
2. ResourcesGroupName - the resource group that holds the VM.  Mine is POWERSHELL-INTRO-DENISE.
3. Location - the Azure region. Mine is centralus.
 
HardwareProfile.VmSize is also useful. Mine is Standard_D2as_v7, which determines CPU, memory, and cost.  ProvisioningState showed Succeeded, so the VM finished deploying.