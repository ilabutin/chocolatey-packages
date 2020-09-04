$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.59/PerfView.exe'
$checksum ='73E1A62763BF149EBF575AFA7D79BD22BFB7667181F1BE8BC9B06CC4ABD3F30A'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'