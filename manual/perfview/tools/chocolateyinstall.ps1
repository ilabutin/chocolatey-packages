$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.66/PerfView.exe'
$checksum ='C877849DEC95F0E75BEA3A6FC2844283335F7E7490C415454BA0B2E555FB7581'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'