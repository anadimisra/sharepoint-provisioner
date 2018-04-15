# Adds the sharepoint farm admin account to SQL DB
Import-Module "SQLPS"
$User = "winnode01\spadmin"
Invoke-SQLCMD "create login [$User] from windows"
Invoke-SQLCMD "alter server role sysadmin add member [$User]"