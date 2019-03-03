$name = 'PerfView'
$url = 'https://github.com/Microsoft/perfview/releases/download/P2.0.26/PerfView.exe'
$checksum ='27C67498F01C69C52415C4A35413508A9DB7890247F1993D27DE40C82FE324FC'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'