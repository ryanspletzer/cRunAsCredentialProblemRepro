[DscResource()]
class cRunAsCredentialProblemReproResource {

    [DscProperty(Key)]
    [String]
    $KeyString

    [void] Set() {

    }

    [bool] Test() {
        return $true
    }

    [cRunAsCredentialProblemReproResource] Get() {
        return $this
    }
}