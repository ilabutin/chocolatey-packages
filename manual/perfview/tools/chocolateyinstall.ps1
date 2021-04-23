$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.67/PerfView.exe'
$checksum ='00C913FCF9FF9FD64551E8BF41D47CD9B5D0FB07669ACE47A33ACA464525C3AE'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'