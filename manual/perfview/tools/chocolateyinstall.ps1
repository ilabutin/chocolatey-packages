$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.19/PerfView.exe'
$checksum ='B3BB7EE1D4A4BED7CCF76991FA989DAB45E3987F2DD7153323472EAF3228826C'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
