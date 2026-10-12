# LM8 Capstone - Azure VM Health Monitoring Report
# Developed in VS Code

# Requirement 1 -Report Heading
Write-Host "Azure VM Health Monitoring Report" -ForegroundColor Cyan
Write-Host "Generated: $(Get-Date)" -ForegroundColor Cyan
Write-Host ""

# Requirement 2 and 3 - Retrieve VMs and use a Variable
$targetLocation = "Centralus"

$allVMs = Get-AzVm | Get-AzVM -Status

# Requirement 5 - Filter by location
$vms = $allVMs | Where-Object { $_.Location -eq $targetLocation }

if (-not $vms) {
    Write-Host "No VMs found in the location: $targetLocation" -ForegroundColor Red
    return
}

# Requirement 9 - Counters for the summary
 
$healthyCount = 0
$attentionCount = 0
$totalCount = $vms.Count

# Requirement 6 - Foreeach Loop
foreach ($vm in $vms) {
    #Requirement 4 - Select-Object stype properties (also used directly)
    $name         = $vm.Name
    $location     = $vm.Location
    $resourceGroup= $vm.ResourceGroupName
    $provisioning = $vm.ProvisioningState
    $timeCreated  = $vm.TimeCreated

    # PowerState comes from Statuses collection
    $powerState = ($vm.Sttuses | Where-Object { $_.Code -like "PowerState*" }).DisplayStatus
    
    # Requirement 7 and 9 - Logic and Color
    if ($vm.PowerState -eq "VM running") {
        Write-Host "$($vm.Name) is Healthy" -ForegroundColor Green
        $healthyCount++
    }
    else {
        Write-Host "$($vm.Name) Needs Attention" -ForegroundColor Yellow
        $attentionCount++
    }
}

# Requirement 9 - AI Enhancement Colors and Summary
Write-Host ""
Write-Host "========== SUMMARY ==========" -ForegroundColor Cyan
Write-Host "Total VMs evaluated  : $($filteredVMs.Count)"
Write-Host "Healthy VMs          : $healthyCount" -ForegroundColor Green
Write-Host "VMs needing attention: $attentionCount" -ForegroundColor Yellow