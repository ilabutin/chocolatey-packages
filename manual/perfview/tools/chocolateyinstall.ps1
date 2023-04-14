$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.2/PerfView.exe'
$checksum ='1A2DD1451257C5498499D19F46E2E272EDE5969E809D180EB52EB93F5A76C91E'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
