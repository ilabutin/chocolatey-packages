$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.22/PerfView.exe'
$checksum = '7e0203ba3873bfa6b1a68494d876647a7af26529b9a201e256875ffc27dd18fa'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'


