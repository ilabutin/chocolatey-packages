$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v4.0.2/PerfView.exe'
$checksum = 'b89cdc4e2f23db0d893824b4a75e095e5fa623b9a8bdd56d15380fdfa0d7709c'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'


















