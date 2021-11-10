$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.74/PerfView.exe'
$checksum ='1ACFDD8AB8584EF0AF453CBDDDF465452DF47A9DA2AF879104C889D5F0FFBC00'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'