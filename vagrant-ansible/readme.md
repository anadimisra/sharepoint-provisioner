# Ansible Sharepoint Provisioner

## What it does

1. Create AWS VPC
1. Create AWS Security Group with Sharepoint Ports opened
1. Create an Active Directory Domain Controller
1. Configure Service Accounts for Sharepoint in AD
1. Create 2 instances - 1 for Sharepoint (App + Web Services) and 1 for MSSQL Server
1. Join instances to AD Domain
1. Configure DB
1. Use Service Accounts to configure Sharepoint

## How to run

`./run.sh` from a machine with AWS credentials configured.
