function Get-GitHubReleaseUrl( $GitHubRepositoryUrl, $Pattern='\.exe$') {
    $latestReleases = "$GitHubRepositoryUrl/releases/latest"
    $latestPage = Invoke-WebRequest -Uri $latestReleases -UseBasicParsing
    $latestPage.Content -match '(?<=src=")[^"]+expanded_assets[^"]+' | Out-Null
    $assetsUrl = $Matches[0]
    if (!$assetsUrl) { throw "Can't find assets URL" }

    $domain  = $GitHubRepositoryUrl -split '(?<=//.+)/' | Select-Object -First 1
    $assetsPage = Invoke-WebRequest -Uri $assetsUrl -UseBasicParsing
    $assetsPage.links | ? href -match $Pattern | Select-Object -expand href | % { $domain + $_ }
}

function global:au_BeforeUpdate() {
   $Latest.Checksum64 = Get-RemoteChecksum $Latest.Url64
}

function global:au_GetLatest {
    $url = Get-GitHubReleaseUrl 'https://github.com/Microsoft/PerfView'
    $version = $url -split '/' | select -Last 1 -Skip 1

    return @{
        Version      = $version.Substring(1)
        URL64        = $url
    }
}

function global:au_SearchReplace {
    @{
       ".\tools\ChocolateyInstall.ps1" = @{
          "(?i)(\`$url = ).*"            = "`${1}'$($Latest.URL64)'"
          "(?i)(\`$checksum =).*"        = "`${1}'$($Latest.Checksum64)'"
        }

        "$($Latest.PackageName).nuspec" = @{
            "(\<version\>).*?(\</version\>)" = "`${1}$($Latest.NuspecVersion)`$2"
        }
     }
}

update -checksumFor none