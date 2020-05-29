$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.56/PerfView.exe'
$checksum ='1787CD49F37BFCAB4B59F09A6D46ACB48B8126FFA786009DF1A5FE9CC3926C82'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'