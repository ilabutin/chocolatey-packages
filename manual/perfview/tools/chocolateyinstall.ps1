$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.16/PerfView.exe'
$checksum ='A7B3744DBA4D127CF58B790BB7F8FC8048F4D797DFF1C4956E9DE8F435FDCE85'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
