$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.43/PerfView.exe'
$checksum ='B1B9F625090EE4F9772937448291FF8EFB414804DC764E67CD528E9DB800AA8E'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'