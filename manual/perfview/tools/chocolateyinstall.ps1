$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.46/PerfView.exe'
$checksum ='98DE5AB840FDD9D609E29FAAF7D368E014A5CDA686A2B11D1847A40130142230'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'