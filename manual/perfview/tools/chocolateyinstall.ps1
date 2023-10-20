$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.1.6/PerfView.exe'
$checksum ='8D4AF5C57EB09390DE9BF63D8A01ED986F7CE68CC10269CA3A5F551FCBD5739B'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'
