$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.5/PerfView.exe'
$checksum ='135F400550ABAF0A5B0D5D68A5A42C20B5584EB732BA5FC9FB08D2977097D866'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'