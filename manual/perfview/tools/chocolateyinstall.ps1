$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.49/PerfView.exe'
$checksum ='3063617DFAC19F59B380084C03AFAA45314789F9664AA5DEC569D589D195CED8'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'