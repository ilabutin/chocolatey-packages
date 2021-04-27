$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.68/PerfView.exe'
$checksum ='570F02D7D1034E268C29087FED5642A024B379F1AD4C52738B32276D99007A86'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'