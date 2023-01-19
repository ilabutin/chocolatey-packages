$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.7/PerfView.exe'
$checksum ='12F6B178E9C54D62415DB510D5C360CC5571AC5DA1B0F08F88A4CF58D300551D'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'