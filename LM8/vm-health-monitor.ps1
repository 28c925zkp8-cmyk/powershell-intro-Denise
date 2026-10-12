# Azure VM Health Monitoring Report

Write-Host ""
Write-Host "=== VM Healthy Results ==="
Write-Host "Report generated: $(Get-Date)"
Write-Host ""

# Retrieve VM inventory
$vms = Get-AzVM -Status

Write-Host "Retrieved $($vms.Count) VM(s)."
Write-Host ""

# Display results
Write-Host "=== VM Inventory Summary ==="
$vms | Select-Object Name, ResourceGroupName, PowerState | Format-Table -AutoSize

Write-Host ""
Write-Host "=== VM Health Evaluation ==="
Write-Host ""

# Evaluate VM health
foreach ($vm in $vms) {
    Write-Host "VM Name: $($vm.Name)"

    if ($vm.PowerState -like "*running*") {
        Write-Host " Status: The VM is healthy."
    }
    else {
        Write-Host "Status: This VM needs attention."
    }
    Write-Host ""
}
Write-Host "=== End of Report ==="





