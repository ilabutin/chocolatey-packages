$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.10/PerfView.exe'
$checksum ='40E43F08CD33546A0DDD65D14CAA3DDA8085E9BF15E54BDA1401E23F10D956E9'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
