# LM4 Reading Assignment

## Reading Completed
Chapter 6 - The Pipeline: Connecting Commands

## Key Takeaways
1. The pipeline sends objects from one command to the next, not plain text.
2. Get-Member shows the object type, properties, and methods that the nomral display hides.
3. Properties are what later commands use to filter, select, and automate.

## Object Ivestigation
Get-Date
Wednesday, October 7, 2026 5:39:02 PM
What Kinds of information does this command display?
The current date and time, including the day of the week, month, day, year, and time.

Get-Date | Get-Member
TypeName: System.DateTime
Date                 Property       datetime Date {get;}
Day                  Property       int Day {get;}
DayOfWeek            Property       System.DayOfWeek DayOfWeek {get;}
DayOfYear            Property       int DayOfYear {get;}
Hour                 Property       int Hour {get;}
Kind                 Property       System.DateTimeKind Kind {get;}

Get-Process | Get-Member
TypeName: System.Diagnostics.Process

### Date Object
Intersting Properties:
- DayOfWeek
- Year
- Hour

### Process Object
Useful Property:
- Name

## AI Reflection

### Did AI help?
Yes. The explanatin matched the class idea that an object is the whole package and a property is one fact inside it.

### What should be  verified?
The object type and property names.  Run Get-Date | Get-Member and confirm TypeName System.DateTime and properties such as Day, Month, and Year before trusing an explanation.

### Final Reflection
The most useful thing I learned was:
Get-Member reveals the properties behind the displayed output, which is what scripts use later.

The question I still have is: 
How do I use those properties with Select-Object and Where-Object in the pipeline?