# Azure VM Status Report - Running VMs only
$vms = Get-AzVM -Status

$vms | `
Where-Object PowerState -eq "VM running" | `
Select-Object Name, ResourceGroupName, PowerState



