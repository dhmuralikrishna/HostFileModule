function Confirm-HostFileExist {
    $hostfilePath = "$env:SystemRoot\System32\Drivers\etc\hosts"

    $result = Test-Path -Path $hostfilePath

    if ($result) {
        Write-Output "Host file exist at $hostfilePath";
    }
    else {
        Write-Output "Host file doesn't exist at $hostfilePath";
    }
}