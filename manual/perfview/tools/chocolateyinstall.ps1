$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.9/PerfView.exe'
$checksum ='8F3FA0D8AE425BB50EC1E39EB4E9B7590E54D132250C65F2918B3C49F71F6CF0'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
