$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.21/PerfView.exe'
$checksum = '54483cf24ee41caf2bb45281c064f5407b14b3444b793fcea5e71eb6a9c9d68e'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'

