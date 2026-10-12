## Task 3 Observations
The script successfully retrieved the VM list and displayed only the Name, ResourceGroupName, and PowerState in a readable table. The VM PI-VM-Denise showed as running.

## Task 4 Observations
Added a foreach loop that examines each VM individually and prints its name. Confirmed the loop correctly processed PI-VM-Denise.

## Task 7 Observations
Added headers, blank lines, and comments to make the report output cleaner and the script easier to read and maintain.

## Task 9 - AI Assistance

- **AI used**: Grok
- **Prompt used**: Review my PowerShell VM healt monitoring script and suggest one improvement.
- **Suggestion received**: Add a count of healthy vs. needs-attention VMs at the end of the report so administrators get a quick high-level summary.
- **Decision**: This is a good idea to implement. It improves the usefulness of the report without making the script mor complicated, and it directly supports the goal of helping admins quickly identify issues.