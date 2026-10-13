# Capstone Plan

## Project Goal
Create an automated PowerShell solution that collects Azure VM information, evaluates health/status, and clearly reports which VMs are healthy and which needs attention.

## Intended Audience
Junior and senior cloud administrators who need a quick way to identify VMs that may need attention.

## Problem Being Solved
Administrators currently review Azure VM status manually. This script automates collection, evaluation, and reporting of VM health.

## Approach
- Connect to Azure and retrieve VM status
- Filter by location
- Use a loop and conditional logic to classify VMs
- Dispay color-coded results and a summary