$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.6/PerfView.exe'
$checksum ='F598A0D7C744BD3CECEBE96E402989E92081DB2144DD194C4706D07E51C19BBE'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'