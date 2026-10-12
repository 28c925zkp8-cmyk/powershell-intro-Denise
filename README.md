# PowerShell Learning Journal

## Module 1 - Foundations
Starting my PowerShell journey.

## Module 2 - Variables
Learned varialbes and storing command output

##  Module 3 - Professional Workflow
Set up VS Code, Powershell 7, Git, and GitHub
Created and ran lm3-lecture.ps1
Practiced resposible AI use

## Module 4 - Objects

Investigated PowerShell objects with Get-Member. Ran object-investigation.ps1 and documented the properties and methods in LM4/lm4-lab.md.

## LM5 - Pipeline
LM5 covered the PowerShell pipelineand an Azure Vm inventory report. Get-AzVM returned a PSVirtualMachineList. Select-Object kept Name, ResourceGroupName, and Location for PI-VM-Densie in POWERSHELL-INTRO-DENISE in centralus. The report is stored in $vms, prints a generated date and VM count, and is sorted by name. The script is LM5/vm-report.ps1

## LM6 - VM Status Reporting
In this lab I learned how to use Get-AzVM -Status to check whether virtual machines are running, how to filter results with Where-Object, and how to create a focused status report. 

## LM7 - Capstone Sprint
Built an initial Azure VM health monitoring script that:
- Retrieves VM inventory
- Displays a summary of name, resource group, and power state
- Uses a foreach loop and if/else logic to evaluate health
- Includes documentation and version control

Key skills proacticed: variables, pipelines, loops, decision logic, documentation, and Git.