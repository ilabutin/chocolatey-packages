$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.2/PerfView.exe'
$checksum = '96579d6ee223f66dab20da0535765f477cd020f6516e0448ec85e2f4a1a80eff'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'











