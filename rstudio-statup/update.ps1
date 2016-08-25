import-module au


function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri 'https://www.rstudio.com/products/rstudio/download/preview/' #could use: 'https://api.github.com/repos/dnGrep/dnGrep/releases/latest' | select -expand Content | ConvertFrom-Json | select name, assets_url

    $re      = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-.*.exe'
    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -replace "^.*RStudio-(.*).exe", '$1'

    return @{ URL32 = $url; Version = $version }
}

update
