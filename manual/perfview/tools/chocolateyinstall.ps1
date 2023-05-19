$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.3/PerfView.exe'
$checksum ='D8D5E541B4939348AA72704AAF29E0362B7F5ECA3C62825BFA57422B05B35821'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
