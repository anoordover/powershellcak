function Get-IISAppPoolIdentity {
    param (
        [string]$AppPoolName
    )
    $appPool = Get-IISAppPool -Name $AppPoolName
    if (!$appPool) {
        throw New-Object System.Exception("App pool '$AppPoolName' not found")
    }
    $processModel = $appPool.processModel
    if ($processModel.identityType -eq "SpecificUser") {
        return New-Object System.Security.Principal.NTAccount($processModel.userName)
    } else {
        return New-Object System.Security.Principal.NTAccount("IIS APPPOOL\$AppPoolName")
    }
}
