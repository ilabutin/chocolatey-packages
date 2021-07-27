$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.71/PerfView.exe'
$checksum ='EAEBCC75C74B57876203204FAFF4E9757A5F834CF84831E602C529F7331FD83B'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'