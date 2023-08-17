$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.4/PerfView.exe'
$checksum ='433A75E73269E21BF9A3F18BD120FAB58273DDBA3EB30B05D9A6074440FE6687'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
