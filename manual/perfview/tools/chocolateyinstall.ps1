$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.8/PerfView.exe'
$checksum ='899F5F39B3039DECB8689269B2D0D7EB1AE3FCC5D74DAB236AE50B937F31D8AB'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'