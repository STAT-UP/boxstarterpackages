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
    $download_page = Invoke-WebRequest -Uri "https://tortoisegit.org/download/"

    $re      = '/TortoiseGit-.*-64bit.msi'
    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href
    $version = $url -replace ".*/TortoiseGit-(.*)-64bit.msi", '$1'

    return @{ URL64 = "https:" + $url; Version = $version }
}

Update-Package -ChecksumFor 64