$ConfigData = @{
     AllNodes = @(
        @{
            NodeName                    = '*'
            PSDscAllowPlainTextPassword = $True
        }
        @{
            NodeName     = 'localhost'
        }
    )
}

Configuration TestConfig {
    param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [PSCredential]
        $Credential
    )

    Import-DscResource -Module cRunAsCredentialProblemRepro

    Node $AllNodes.NodeName {
        cRunAsCredentialProblemReproResource RunAsCredentialProblemReproSetting {
            KeyString = 'Test'
            #PsDscRunAsCredential = $Credential
        }
    }
}

TestConfig -OutputPath C:\DSC\Config -ConfigurationData $ConfigData -Credential (Get-Credential)