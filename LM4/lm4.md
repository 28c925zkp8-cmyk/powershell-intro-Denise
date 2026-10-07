# Learning Module 4

## Object Examined
Get-Process

## Object Type
System.Diagnostic.Process

## Properties Found
Id, CPU, WorkingSet

##  Reflection
A PowerShell object is the structured result of a command, not just text on the screen. It has a type, properties, and methods. A property is one piece of data on that object, such as CPU on a process. The porcess object was the most interesting because Responding, CPU, and WorkingSet show whether an application is hung or using too many resources.  Get-Member showed the object type and the full property list, which the console does not display.  Properties are useful in automation because a script can filter or act on one value, such as a process Id, without reading the displayed text.