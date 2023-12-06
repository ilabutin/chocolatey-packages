$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.7/PerfView.exe'
$checksum ='2E20E6040F14F0C5D5FBCC12E61D287FF4F5816124312755A1D2192DBA5E3E51'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
