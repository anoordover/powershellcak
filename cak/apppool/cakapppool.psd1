@{
    ModuleVersion = '1.0.0.0'
    Author = 'Arno Noordover'
    Description = 'Get AppPool identity'
    PowerShellVersion = '5.1'
    FunctionsToExport = 'Get-IISAppPoolIdentity'
    CmdletsToExport = @('Get-IISAppPoolIdentity')
    RootModule = 'cakapppool.psm1'
}