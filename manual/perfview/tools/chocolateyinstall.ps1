$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.65/PerfView.exe'
$checksum ='2AA3CA0A26D000F2347095555DA9F316301E47644F2909EDE1FE0E52853D39CC'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'