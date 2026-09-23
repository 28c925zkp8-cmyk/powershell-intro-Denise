#Week 2 - Variables

## Variables Created
$studentname = "<your name>"
Denise Majewski
$program = "<your program>"
IT Technology Support Specialist
$semester = "<current semester>"
Fall 2026
$favoritetech = "<your favorite technology>"
Hume band
$futurejob = "<career goal>"
Work from home

## Commands Used
$currentdate = Get-Date
Tuesday, September 22, 2026 8:41:55 PM
$subscription = Get-AzSubscription
TenantId: 084ac6d9-e3fa-42c7-b541-976478afff8e

Name                 Id                                   State
----                 --                                   -----
student-30041007-sub 2ab86d8d-2cc2-4fcc-b871-eb27d30ed988 Enabled

## What I Learned

## Task 3.2.a.	Which variable contained the most information
Variable containing the most information is $subscription
## Task 3.2.b.	Which variable contained the least information
Variable containing the least information is $currentdate

## Task 4.5.a. One thing you learned about Get-Date
I can change the format in which the date is returned.
## Task 4.5.b. One thing you learned about Get-AzSubscription
Ability to select and switch active subscriptions from a list.
## Task 4.5.c. Which example was most useful
Most useful is Get-Help Get-AzSubscription Example 4: Change the current context to use a specific subscription
This command gets the specified subscription, and then sets the current 
    context to use it. All subsequent cmdlets in this session use the new 
    subscription (Contoso Subscription 1) by default.

## Task 5.3 $currentSub = (Get-Azcontext).Subscription
## Task 5.a.	Subscription Name 
student-30041007-sub
## Task 5.b.	Subscription State
Enabled
## Task 5.c.	Tenant ID (if shown)
084ac6d9-e3fa-42c7-b541-976478afff8e
## Task 5.d.	Current Azure Context
 Tenant: 084ac6d9-e3fa-42c7-b541-976478afff8e

SubscriptionName     SubscriptionId                       Account   Environment
----------------     --------------                       -------   -----------
student-30041007-sub 2ab86d8d-2cc2-4fcc-b871-eb27d30ed988 MSI@50342 AzureCloud

## Task 6.4.a.	How variables helped you store information
You type it in only once. Reduces errors with repetitive typing. You can display it, use it with or combine it other commands.  
## Task 6.4.b.	One real-world IT task where variables might be useful
Updating a phone number with a client.

