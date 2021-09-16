$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.72/PerfView.exe'
$checksum ='72DD861E1F367A3888A7CEF505994814A01FB532B4BE0D94077607D89078A32F'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'