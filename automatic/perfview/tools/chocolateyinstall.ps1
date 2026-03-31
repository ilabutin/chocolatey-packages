$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.0/PerfView.exe'
$checksum = 'bf3b5114778f628d53840bf1167e1567529a28f993c6281158a54e870fb58cdb'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'









