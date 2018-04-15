<#
This script creates local "application users" for Sharepoint.

- Note: ALL USERS HAVE SAME PASSWORD. NOT RECOMMENDED FOR PRODUCTION.

#>
$ErrorActionPreference = "Stop"
echo $PSScriptRoot
$json = Get-Content -Raw -Path "C:/scripts/users.json" | ConvertFrom-Json

$commonPassword = 'P0w3rsh311R0ck$' | ConvertTo-SecureString -AsPlainText -Force

foreach ($user in $json.users) {
    Write-Host -Foreground Green "-- Create User:" $user.name
    New-LocalUser $user.name `
    -Password $commonPassword `
    -FullName $user.fullname `
    -Description $user.desc `
    -PasswordNeverExpires -UserMayNotChangePassword
}
