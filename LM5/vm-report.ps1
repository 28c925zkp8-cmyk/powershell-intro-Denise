Write-Host "Azure VM Inventory Report"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
$vms = Get-AzVM
Write-Host "VM count: $($vms.Count)"
Write-Host ""
$vms | Select-Object Name, ResourceGroupName, Location | Sort-Object Name
