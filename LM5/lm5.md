# LM5 - PowerShell Pipeline and Select-Object

## Pipeline Examples

Get-Date | Select-Object Day, Month, Year

Get-Process | Select-Object ProcessName, Id

The pipe character (|) sends the output of the command on the left into the command on the right.  Each object moves through the pipeline. Powershell does not turn the result into the text first.

## Properties Selected

Get-Date returns a DateTime object.  Select-Object Day, Month, Year keeps only those three properties. The terminal showed Day 8, Month 10, Year 2026.

Get-Process returns a process object for every running process.  Select-Object ProcessName, Id keeps only the precess name and the process ID.

## What I Learned

A pipeline passes objects, not plain text. Select-Object filters those objects down to the properties I actually need, so the output is shorterand easier to read. An Admin uses this to pull just the fields required for a check or a report instead of dumping every property of every object.
