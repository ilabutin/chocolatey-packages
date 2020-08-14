$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.58/PerfView.exe'
$checksum ='CD57167912BBC7E4CD21D7C6A283E5B1143D51FAC920606C7486C7B3B5D7C75D'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'