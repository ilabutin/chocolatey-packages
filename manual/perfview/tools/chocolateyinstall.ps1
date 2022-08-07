$name = 'PerfView'
$url = 'https://github.com/microsoft/perfview/releases/download/v3.0.3/PerfView.exe'
$checksum ='CCEB8F3AE59292A7F3DF0FDEBD209AD5555A39B72F6CFB73CFD40F3FD0B823BF'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName PerfView -FileFullPath "$toolsDir\PerfView.exe" -url $url -checksum $checksum -checksumType 'sha256'