$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.26/PerfView.exe'
$checksum = 'd1ceedf72e397aabcb295eaa403d45ea1835667c69de944e307b0beda05d02a7'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'





