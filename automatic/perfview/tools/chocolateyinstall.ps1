$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.1/PerfView.exe'
$checksum = 'eeee35582c32ad29e17d4d56a5180d79764f0aa3e309a44ec5f06b7cfd5c08c1'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'










