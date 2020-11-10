$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.62/PerfView.exe'
$checksum ='6E900CFA2E5EC0469E1968BE46AA936CCAE3469A1FFA0BEFAA3948C8B4F7EBCB'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'