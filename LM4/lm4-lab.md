# LM4 Lab:  Investingating PowerShell Objects

## Task 1: Date
-Object type: System.DateTime
-Properties: DayOfWeek, Year, Hour

## Task 2: Process
-Object type: System.DateTime
-Properties: Name, Id, CPU

## Task 3: Azure subscription
-Object type: PS C:\Windows\system32> Get-AzSubscription
Get-AzSubscription : The term 'Get-AzSubscription' is not recognized as the name of a cmdlet, function, script file,
or operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and
try again.
At line:1 char:1
+ Get-AzSubscription
+ ~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (Get-AzSubscription:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
-Did not work properly
-Properties: Name, Id, State

## Task 4: Variable
-Object changed after storing in a variable: No
Useful property: Name