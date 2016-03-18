# cRunsAsCredentialProblemRepro

This is the simplest possible class-based DSC resource to reproduce an issue found when using PsDscRunAsCredential.

If you apply the WorkingConfig.ps1 configuration in the Examples folder in the module, and then call Get-DscConfiguration, everything works fine.

If you apply the BrokenConfig.ps1 configuration in the Examples folder in the module, and then call Get-DscConfiguration, it results in a thrown error:

````
Get-DscConfiguration : The PowerShell DSC resource  returned results in a format that is not 
valid. The results from running Get-TargetResource should be in a hashtable format. The keys in 
the hashtable should be the same as the properties in the corresponding DSC resource schema file.
At line:1 char:1
+ Get-DscConfiguration -Verbose
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidResult: (MSFT_DSCLocalConfigurationManager:root/Microsoft/.. 
   .gurationManager) [Get-DscConfiguration], CimException
    + FullyQualifiedErrorId : GetTargetResourceInvalidResultFormat,Get-DscConfiguration
````
