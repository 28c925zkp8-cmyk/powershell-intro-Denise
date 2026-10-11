# Azure VM Status Report - Running VMs only
$vms = Get-AzVM -Status

$vms | `
Where-Object PowerState -eq "VM running" | `
Select-Object Name, ResourceGroupName, PowerState

# Azure VM Status Report
# Shows only virtual machines that are currently running

Write-Host "===== Azure VM Sttus Report (Running VMs) =====" -ForegroundColor Cyan
Write-Host "Generated: $(Get-Date)" -ForegroundColor Gray
Write-Host ""

$vms = Get-AzVM -Status

$vms | `
Where-Object PowerState -eq "VM running" | `
Select-Object Name, ResourceGroupName, PowerState



