$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.70/PerfView.exe'
$checksum ='D981A7A41E34C42F86297928A6DBFB634EE79DEAC2C3366E5E96414CAD3CF8E8'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'