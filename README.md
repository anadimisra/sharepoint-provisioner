# sharepoint-provisioner

A repository of Sharepoint 2016 provisioners that utilize various toolchains. Each directory contains one provisioner.

1. [Vagrant + Powershell](./vagrant-powershell) on AWS
1. Vagrant + Ansible (coming soon)
1. Vagrant + Puppet (coming soon)
1. All of the above across AWS and Azure (coming soon)

## How it works

1. Vagrant creates the barebones server on AWS (or Azure, coming soon).
1. Vagrant then runs the provisioning scripts or playbooks.
1. The provisioning scripts contain the complete logic to
  1. Understand the current state of the server;
  1. Understand what needs to be configured;
  1. Install Sharepoint and perform configuration.

## References

1. [Creating Service Accounts for Sharepoint with Powershell](https://blogit.create.pt/fabiocarvalho/2017/02/20/sharepoint-2016-create-service-accounts-using-powershell-script/)
1. [This great reference](http://www.sphammad.com/blog/abcd-of-powershell-automating-sharepoint-2016-installation) from sphammad.com on the ABCD of Sharepoint 2016 installation

Vagrant

1. [rebooting Vagrant boxes during provision](https://stackoverflow.com/a/44008916/682912)
1. [`vagrant-reload` plugin](https://github.com/aidanns/vagrant-reload)

Powershell:

1. [`ConvertFrom-Json`](https://blogs.technet.microsoft.com/heyscriptingguy/2014/04/23/powertip-convert-json-file-to-powershell-object/)
