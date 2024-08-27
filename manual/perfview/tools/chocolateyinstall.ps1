$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.15/PerfView.exe'
$checksum ='BA1A162E6D97D6BD85CF7BD392597EA4CB9DFECE2136F64A77B5919CC83290D2'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
