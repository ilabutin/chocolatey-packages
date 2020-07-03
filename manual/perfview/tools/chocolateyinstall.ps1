$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.57/PerfView.exe'
$checksum ='1E12AFBE0B6F65E8638CE6150AB2FCFDD4C5C1C1321020E3080535663E4A0207'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'