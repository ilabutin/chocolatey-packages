$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.1/PerfView.exe'
$checksum ='2E00AD19DE6ABC5F776F5A3539748962778B37DB0472913A54B8EB0CA06A2286'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'