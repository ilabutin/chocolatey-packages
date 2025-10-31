$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.28/PerfView.exe'
$checksum = '8ae1860ce65932ff8885899418f13b707b0ae413d18ffea443e44f720108380b'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'






