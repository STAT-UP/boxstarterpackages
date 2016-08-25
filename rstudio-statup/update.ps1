import-module au

$releases = 'https://www.rstudio.com/products/rstudio/download/preview/'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases #could use: 'https://api.github.com/repos/dnGrep/dnGrep/releases/latest' | select -expand Content | ConvertFrom-Json | select name, assets_url

    $re      = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-.*.exe'
    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -replace "^.*RStudio-(.*).exe", '$1'

    return @{ URL = $url; Version = $version }
}

update