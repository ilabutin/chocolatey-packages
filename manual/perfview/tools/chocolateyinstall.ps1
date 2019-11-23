$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.48/PerfView.exe'
$checksum ='201A69C4AC5B1DC5A257D513C76171A86FD8AEBCD6E2295C876B58127E7F5C9E'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'