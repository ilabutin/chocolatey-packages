$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.50/PerfView.exe'
$checksum ='BA2CCA01C7192189037862BAF0C08EE92B7EFB6E5072ED0E54578FC6B760FE44'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'