# Azure VM Health Monitoring Report

Write-Host "Azure VM Health Monitoring Report"
Write-Host (Get-Date)
Write-Host ""

# Store all Azure VMs (including status)
$vms = Get-AzVM -Status

Write-Host 'Retrieved $($vms.Count) VM(s).'
Write-Host ""

#Display only name, resource group, and power state
$vms | Select-Object Name, ResourceGroupName, PowerState | Format-Table -AutoSize