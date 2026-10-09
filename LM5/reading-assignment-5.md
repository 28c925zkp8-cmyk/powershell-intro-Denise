# LM5 Reading Assignment

## Reading Completed

Chapter 7 - Adding Commands to the Pipeline

## Key Takeaways

1. The pipeline connects commands with | and passes objects, not text.
2. Select-Object keeps only the properties I name, so the output is shorter and easier to read.
3. New commands, such as Get-AzVM from the Az module, can be added and then used in the pipeline.

## Pipeline Practice

### Azure VM Pipeline

What informatin was selected?

Name and ResourceGroupName. My result was PI-VM-Denise in the resource group POWERSHELL-INTRO-DENISE.

### Date Pipeline

How was the output different?

Get-Date alone shows the full date and time. Select-Object Day, Month, Year keeps only those three properties, so the output is a shor table instead the whole date.

## AI Reflection

### Did AI help?

Yes. The explanation made sense.  It said the pipeline connects commands with | and passes objects, which matches the lab and the reading. Select-Object keeping only named properties is what I saw with both the VM report and the date command.

### What should be verified?

I would verigy any example command by running it myself. An explanation can sound right and still have a wrong property name or a command that needs a module I have not installed.

## Final Reflection

How could I use pipelines as a administrator?

I would use a pipeline to pull only the fields I need for a report, such as VM name, resource group, and location, instead of dumping every property of every object.

What question do I still have?

How do I know which module a command comes from before I install it?
