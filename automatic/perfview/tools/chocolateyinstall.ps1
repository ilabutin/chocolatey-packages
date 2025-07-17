$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.23/PerfView.exe'
$checksum = '250a38c09ea40cffe2dda1d17eb3873556823f6474dade23dd9b3650378c77d0'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'



