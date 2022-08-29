$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.4/PerfView.exe'
$checksum ='7C4F714210E8E1B08378900AA722239038B4A32A5DA1DA66BD26CE6680D71437'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'