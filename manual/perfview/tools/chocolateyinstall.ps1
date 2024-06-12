$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.11/PerfView.exe'
$checksum ='92B16AB552A2DCCB3B39099C9F8967DE44910017CB3F97E14A8A1BB7B6785E74'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
