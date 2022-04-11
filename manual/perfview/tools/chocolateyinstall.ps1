$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.77/PerfView.exe'
$checksum ='D902BEC3711A76F556E0F0690E4DAC65E9461B727C2DBD707AE756050EC02AE0'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'