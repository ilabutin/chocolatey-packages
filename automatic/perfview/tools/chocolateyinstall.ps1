$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.24/PerfView.exe'
$checksum = '4d9e800d3dc523964f104c8f8b199e7adf0579a7bba4ad612f2f6eada02e4141'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'




