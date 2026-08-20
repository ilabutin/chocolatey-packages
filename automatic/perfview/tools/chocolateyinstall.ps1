$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.2.6/PerfView.exe'
$checksum = '84b8523f7fb4783fd0baae6b080adb1b5aac388192145ad713e504c69954556d'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'















