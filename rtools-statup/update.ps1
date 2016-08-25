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

    $baseurl = 'https://cran.r-project.org/bin/windows/Rtools/'

    $download_page = Invoke-WebRequest -Uri $baseurl

    $re      = 'Rtools[0-9\.]*.exe'
    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -replace "Rtools(.*).exe", '$1'
    $version = $version -replace "^(.)", '$1.'

    return @{ URL64 = $baseurl + $url; Version = $version }
}

Update-Package -ChecksumFor 64