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
    $download_page = Invoke-WebRequest -Uri "https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases" #could use: 'https://api.github.com/repos/dnGrep/dnGrep/releases/latest' | select -expand Content | ConvertFrom-Json | select name, assets_url

    $re      = '.*/GCMW-.*.exe'
    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -replace ".*/GCMW-(.*).exe", '$1'

    return @{ URL64 = "https://github.com" + $url; Version = $version }
}

Update-Package -ChecksumFor 64