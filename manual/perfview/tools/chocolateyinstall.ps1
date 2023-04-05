$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.1/PerfView.exe'
$checksum ='C0F3589A7574859836AB0AB625199600404E91712D4E8AD21D39A54D2596DB44'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'