# Azure VM Status Report
$vms = Get-AzVM -Status

$vms | Select-Object Name, ResourceGroupName, PowerState

# Azure VM Status Report - Running VMs only
$vms = Get-AzVM -Status

$vms | `
Where-Object PowerState -eq "VM running" | `
Select-Object Name, ResourceGroupName, PowerState

# Azure VM Status Report 
$vms = Get-AzVM -Status


