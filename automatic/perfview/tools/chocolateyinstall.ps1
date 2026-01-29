$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.29/PerfView.exe'
$checksum = '24d0da7d9facbd1eaf85665ca810f16da43da5ac98bffe39ef9b1925f74c5b24'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'







