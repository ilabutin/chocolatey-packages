$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.8/PerfView.exe'
$checksum = 'e6b89a6da0fe7da5f64302306153c6aac7a4be67c800426a91ae014093e4df2d'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
















