$name = 'PerfView'
$url =  'https://github.com/microsoft/perfview/releases/download/v3.1.9/PerfView.exe'
$checksum ='8f3fa0d8ae425bb50ec1e39eb4e9b7590e54d132250c65f2918b3c49f71f6cf0'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
