$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v4.0.0/PerfView.exe'
$checksum = '270e2ba419b0b2d93c4b15b0851f257edf655c92fe0ad95add3d0b5f6d6aad48'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'

















