$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/P2.0.76/PerfView.exe'
$checksum ='52CFEE6399C8D99F95BBA90958214364A6F0D80F5C38BCC1FBC922A522CEB556'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'