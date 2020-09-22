$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.61/PerfView.exe'
$checksum ='966E59636D1770EAB3F6EADD1BAF87D85EE318C754AFDC55F1B81F602FADB637'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'