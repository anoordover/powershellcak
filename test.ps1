$dirPath = "C:\MyDirectory"
$accountName = "mydomain\myuser"

$dirAcl = Get-Acl $dirPath
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($accountName, "ReadAndExecute", "Allow")
$dirAcl.SetAccessRule($accessRule)
Set-Acl $dirPath $dirAcl


$dirPath = "C:\MyDirectory"
$accountName = "mydomain\myuser"

$dirAcl = Get-Acl $dirPath
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($accountName, "ReadAndExecute", "Allow")
$accessRule2 = New-Object System.Security.AccessControl.FileSystemAccessRule($accountName, "Write", "Allow")
$accessRule3 = New-Object System.Security.AccessControl.FileSystemAccessRule($accountName, "CreateDirectories", "Allow")
$dirAcl.SetAccessRule($accessRule)
$dirAcl.SetAccessRule($accessRule2)
$dirAcl.SetAccessRule($accessRule3)
Set-Acl $dirPath $dirAcl