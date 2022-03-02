$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.76/PerfView.exe'
$checksum ='8F688EBFE4F3920EDFD960BB30EC0BBA4CC48F30E6C15F15A2C235DF85372BE2'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'