$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.0/PerfView.exe'
$checksum ='7E374E4BD40C8D92FBB26E577AB55947223A9BE5BB07F75B24886A34252B6747'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'