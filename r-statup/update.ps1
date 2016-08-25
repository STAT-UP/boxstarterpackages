import-module au

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^\s*url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_GetLatest {

    ##### R #####
    $baseurl = 'https://cran.r-project.org/bin/windows/base/'

    $download_page = Invoke-WebRequest -Uri $baseurl

    $re      = 'R-[0-9\.]*-win.exe'
    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -replace "^.*R-(.*)-win.exe", '$1'

    return @{ URL64 = $baseurl + $url; Version = $version }
}

Update-Package -ChecksumFor 64