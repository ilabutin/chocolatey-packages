$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.0/PerfView.exe'
$checksum ='A03F58507444C301D8D8C589A221851C6F25B972B8A8672974B498A9E25C83DD'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'