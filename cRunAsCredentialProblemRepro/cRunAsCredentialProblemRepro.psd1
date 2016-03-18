@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'cRunAsCredentialProblemRepro.psm1'

    DscResourcesToExport = @('cRunAsCredentialProblemReproResource')

    # Version number of this module.
    ModuleVersion = '1.0'

    # ID used to uniquely identify this module
    GUID = 'c1f47069-43bc-4b20-9b51-642f572c2485'

    # Author of this module
    Author = 'Ryan Spletzer'

    # Company or vendor of this module
    CompanyName = ''

    # Copyright statement for this module
    Copyright = ''

    # Description of the functionality provided by this module
    Description = 'Module to reproduce the PsDscRunAsCredential issue when calling Get-DscConfiguration.'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.0'
}
