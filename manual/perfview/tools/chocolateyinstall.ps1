$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.45/PerfView.exe'
$checksum ='76A0D2A213BC6026FC4CA136C1FC11C41B6B24453F60E606816D91D880967BD1'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'