$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.3/PerfView.exe'
$checksum = 'edf8b7eda654f9e818781c06d9a02c953b1db568cf0e42c625400523c4f46735'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'












