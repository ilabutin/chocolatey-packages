$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.2/PerfView.exe'
$checksum ='EB9C2AF6B9CD3D0EC07AE89BBB79191EFDA9CD69637705F751576BFE5F30E008'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'