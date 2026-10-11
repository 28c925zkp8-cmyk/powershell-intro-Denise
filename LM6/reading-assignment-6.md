# LM6 Reading Assignment

## Reading Completed
Chapter 8 - Objects, Properties, Methods, and More

## Key Takeaways
1.  PowerShell works with objects, and objects have properties.
2.  You can filter objects using properties with Where-Object.
3.  Understanding properties is required before you can effectively filter or select data.

## VM Investigation
### Object Type
PSVirtualMachine 

### Useful Properties
- PowerState
- Name
- ProvisioningState

## Filtering Example
What changed after filtering?
Only VMs with PowerState equal to "VM running" were displayed.

## Variable Practice
Why would storing filtered data be useful?
So you can reuse the filtered list later without running the command again.

## AI Reflection
### Did AI help?
Yes. AI has the ability to break it down into the simplest terms/explanation.  Alos able to find another way to explain an idea until you get it.

### What should be verified?
The exact syntax and that the command works in my environment.

## Final Reflection
How could filtering help a cloud administrator?
They can quickly see only the running VMs instead of scrolling through everything.

What question do I still have?
How do I find out all the properties an object has if I don't already know their names?
