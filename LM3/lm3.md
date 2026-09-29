# LM3

## Creating my professional workflow

### What I learned

### Get-AzSubscription
Get-AzSubscription is an Azure PowerShell cmdlet in the Az.Accounts module that retrieves information about the Azure subscriptions that the currently authenticated account can access. It returns details such as the subscription name, subscription ID, tenant ID, and subscription state.

Basic usage
PowerShell
Get-AzSubscription
Show more lines

This lists all subscriptions available to your signed-in Azure account across all accessible tenants.

Example output:

Plain Text
Name Id TenantId State
---- -- -------- -----
Production xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa Enabled
Development yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa Enabled
Show more lines
Common examples

Get a specific subscription by name

PowerShell
Get-AzSubscription -SubscriptionName "Production"
Show more lines

Get a specific subscription by ID

PowerShell
Get-AzSubscription -SubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
Show more lines

List subscriptions in a specific tenant

PowerShell
Get-AzSubscription -TenantId "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa"
Show more lines

Typical workflow

After viewing available subscriptions, you often use Set-AzContext to make one subscription the active context for subsequent Azure commands:

PowerShell
Get-AzSubscription
Set-AzContext -Subscription "Production"
Show more lines

This ensures later Azure PowerShell commands run against the intended subscription.

Prerequisites

You must be authenticated to Azure first:

PowerShell
Connect-AzAccount
Get-AzSubscription
Show more lines

Without signing in, the cmdlet cannot retrieve subscription information.

In short, Get-AzSubscription is the Azure PowerShell command used to discover which Azure subscriptions your account can access and obtain their identifying information.

### Verificaiton
I ran Get-Help Get-AzSubscription in VS Code.  Help failed because the Az module is not installed in this session. I verified the command on Microsoft Learn (Get-AzSubscription, Az.Accounts). The docs match the AI explanation: it lists subscriptions the current accunt can access (name, ID, tenant, state). It is a read command. not a delete command.