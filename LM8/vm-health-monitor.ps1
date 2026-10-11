# Azure VM Health Monitoring Report

Write-Host "Azure VM Health Monitoring Report"
Write-Host (Get-Date)

$vms = Get-AzVM -Status

Write-Host 'Retrieved $($vms.Count) VM(s).'
