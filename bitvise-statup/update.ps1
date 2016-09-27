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

    ##### Bitvise #####
    $baseurl = 'https://www.bitvise.com/ssh-client-download'

    $download_page = Invoke-WebRequest -Uri $baseurl

    $re      = 'BvSshClient-Inst'

    $url   = $download_page.links | ? href -match $re | select -First 1 -expand href

    $useless = $download_page.Content -Match "ersion ([0-9\.]+)"
    $version = $Matches[1]

    return @{ URL64 = $url; Version = $version }
}

Update-Package -ChecksumFor 64