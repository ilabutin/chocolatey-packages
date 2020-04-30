$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.55/PerfView.exe'
$checksum ='849D8B963848114C2A383F420E02EB9462D795EA067AE95ABCF34A087D820F6A'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'