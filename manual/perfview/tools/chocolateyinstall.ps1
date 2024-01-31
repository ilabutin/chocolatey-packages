$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.8/PerfView.exe'
$checksum ='E8871DFCC72C6D58C6A52ABD7987A742DAC2D6C3CC691D830DEC626169D77598'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
