$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.13/PerfView.exe'
$checksum ='B6C39A4FFFC29293E004B6C385FA0938C78287F91643A15F80734BEACD936E92'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
