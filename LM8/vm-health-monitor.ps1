# Azure VM Health Monitoring Report

Write-Host "Azure VM Health Monitoring Report"
Write-Host (Get-Date)
Write-Host ""

# Store all Azure VMs (including status)
$vms = Get-AzVM -Status

Write-Host 'Retrieved $($vms.Count) VM(s).'
Write-Host ""

# Display summary table
$vms | Select-Object Name, ResourceGroupName, PowerState | Format-Table -AutoSize

Write-Host ""
Write-Host "Examining each VM:"
Write-Host ""

# Loop through each VM and evaluate status
foreach ($vm in $vms) {
    Write-Host "VM Name: $($vm.Name)"

    if ($vm.PowerState -like "*running*") {
        Write-Host " Status: The VM is healthy."
    }
    else {
        Write-Host "Status: This VM needs attention."
    }
}



