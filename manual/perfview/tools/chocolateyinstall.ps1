$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.17/PerfView.exe'
$checksum ='F827A2B930239E64F4C9B1D8DDA55B1034173E65E30D1D59057A7D47D2B936B0'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
