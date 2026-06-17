$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.4/PerfView.exe'
$checksum = 'c0a6471e2276ed4232be62285eada73a03346e3813f3b926dad4710b123719e4'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'













