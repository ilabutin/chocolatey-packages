$name = 'PerfView'
$url = 'https://github.com/Microsoft/perfview/releases/download/P2.0.39/PerfView.exe'
$checksum ='EF2AD97338E4BAA4392183CB3B1956026106D8348B4D4341D8C8CD2C86F2D292'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'