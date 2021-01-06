$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.64/PerfView.exe'
$checksum ='7215E2589445BABB276103749CB74B58CE83CED6DC375F190395B60B7C5F7112'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'