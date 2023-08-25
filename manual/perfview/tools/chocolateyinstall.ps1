$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.5/PerfView.exe'
$checksum ='F989C742D4DEE55FBF023D8C226B4B85A897EFDF7386E9196B7FC530636C513F'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
