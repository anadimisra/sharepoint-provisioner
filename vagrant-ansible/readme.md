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

## References

1. http://blog.rolpdog.com/2015/09/manage-stock-windows-amis-with-ansible.html
1. ABCD of Powershell and Sharepoint: https://www.sphammad.com/blog/abcd-of-powershell-automating-sharepoint-2016-installation
1. Which Service accounts to use with Sharepoint: https://docs.microsoft.com/en-us/sharepoint/security-for-sharepoint-server/plan-for-administrative-and-service-accounts
