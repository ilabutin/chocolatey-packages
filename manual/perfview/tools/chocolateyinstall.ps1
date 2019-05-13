$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.42/PerfView.exe'
$checksum ='B5D8EBE0D36CBF039AE99071BA067E2991FE356AF3BC61A13F3012D90D54DF2D'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'