$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.30/PerfView.exe'
$checksum = '620e9d2b428128580fbfc151b2750f49e3aad3bbd7d0a0551da1c8e0902c3049'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'








