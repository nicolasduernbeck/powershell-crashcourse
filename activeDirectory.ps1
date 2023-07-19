Import-Module ActiveDirectory
$user = Get-ADUser markz
$user.Name | Out-File user.txt
Get-Content .\user.txt

Set-ADUser -Identity markz -Surname Test
Get-ADUser markz
Add-ADGroupMember -Identity markz -Members sales