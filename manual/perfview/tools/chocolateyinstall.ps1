$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.69/PerfView.exe'
$checksum ='057646C096B79FB5BAF973312716204963EB538DA79A6EE3F5B27E92350093DA'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'