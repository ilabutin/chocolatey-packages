$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.12/PerfView.exe'
$checksum ='8BCBBB944AF8CDB95F9FA75CD7B6B86FA5E7B523359C5B7FFA9C1DC91BF1E015'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
