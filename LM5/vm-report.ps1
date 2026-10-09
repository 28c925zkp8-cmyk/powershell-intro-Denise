Write-Host "Azure VM Inventory Report"
Write-Host "Generated: $(Get-Date)"
Write-Host""
$vms = Get-AzVM
$vms | Select-Object Name, ResourceGroupName, Location
