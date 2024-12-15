$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.18/PerfView.exe'
$checksum ='3BB79086B6AE1CAAA6D37FA95FF72A2947C7F735F1F910A9D7D02B78F3D2B129'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
