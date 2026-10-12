# Project Overvierw
Automates health and status reporting for Azure VMs so administrators do not have to check the portal manually.

# Features
- Connects to Azure and retrieves VM status
- Filters by location
- Color-coded healthy vs needs-attention output
- Displays Resource Group, provisioning state, and creation time
- Summary counts

# Commands Used
- Connect-AzAccount
- Get-AzVM -Status
- Where-Object
- foreach
- if/else
- Write-Host with -ForegroundColor

# Lessons Learned
PowerShell objects, the pipeline, and status sub-properties (Statuses collection) are essential for Azure resource reporting.