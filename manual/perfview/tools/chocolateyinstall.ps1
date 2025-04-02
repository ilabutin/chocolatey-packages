$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.20/PerfView.exe'
$checksum ='B9D0A06AA1EAC74966DB136BD5C0181AF5F257E50C66D11651327FE17BA4A196'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
