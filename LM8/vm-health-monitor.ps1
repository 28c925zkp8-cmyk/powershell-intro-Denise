# LM8 Capstone - Azure VM Health Monitoring Report
# Developed in VS Code

# Requirement 1 - Generate Report Heading
Write-Host "Azure VM Health Monitoring Report" -ForegroundColor Cyan
Write-Host "Generated on: $(Get-Date -Format 'MM/dd/yyyy HH:mm:ss')" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

# Requirement 2 and 3 - Retrieve VMs Information and Use a Variable
# Connect first if needed: Connect-AzAccount

$allVMs = Get-AzVm -Status

# Requirement 4 - Use Select-Object to choose specific properties
# Requirement 8 - Properties included (ResourceGroupName, TimeCreated, ProvisioningState)
#Note: PowerState is required for the health check below
$selectedVMs = $allVMs | Select-Object Name, Location, ResourceGroupName, ProvisioningState, TimeCreated, PowerState

# Requirement 5 - Use Filtering with Where-Object
$filteredVMs = $selectedVMs | Where-Object { $_.Location -eq "centralus" }

# Requirement 9 - Counters for the summary
$healthyCount = 0
$attentionCount = 0
$totalCount = $filteredVMs.Count

Write-Host "Evaluating $totalCount VMs in the filtered results..." -ForegroundColor White
Write-Host ""

# Requirement 6 and 7 - Use a FOREACH loop and Logic (IF) based on PowerState
foreach ($vm in $filteredVMs) {
    # Display basic information
    Write-Host "VM Name           : $($vm.Name)" -ForegroundColor White
    Write-Host "Location          : $($vm.Location)"
    Write-Host "Resource Group    : $($vm.ResourceGroupName)"
    Write-Host "Provisioning State: $($vm.ProvisioningState)"
    Write-Host "Time Created      : $($vm.TimeCreated)"

    # Requirement 9 - Color-coded status messages
    if ($vm.PowerState -eq "VM running") {
        Write-Host "$($vm.Name) is Healthy" -ForegroundColor Green
        $healthyCount++
    }
    else {
        Write-Host "$($vm.Name) Needs Attention" -ForegroundColor Yellow
        $attentionCount++
    }
    Write-Host "----------------------------------------" -ForegroundColor White
}

# Requirement 9 - AI Enhancement Colors and Summary of VMs evaluated
Write-Host ""
Write-Host "========== SUMMARY ==========" -ForegroundColor Cyan
Write-Host "Total VMs evaluated  : $totalCount"
Write-Host "Healthy VMs          : $healthyCount" -ForegroundColor Green
Write-Host "VMs needing attention: $attentionCount" -ForegroundColor Yellow
Write-Host "=============================" -ForegroundColor Cyan
