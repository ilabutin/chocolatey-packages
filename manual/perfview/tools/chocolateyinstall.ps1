$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.60/PerfView.exe'
$checksum ='D81074A41B943A854333A262AB311C5F66BD0AFD5430F8DB54DEC92797C6AA18'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'