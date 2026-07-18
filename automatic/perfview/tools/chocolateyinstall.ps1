$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.5/PerfView.exe'
$checksum = 'bb511f45a0df4ceec52210a6d24519c1d507a05224cfa19d6b2ec3e5923d9627'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'














