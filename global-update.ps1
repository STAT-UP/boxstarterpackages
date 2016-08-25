try {
    $olddir = $PWD


    'Find correct directory'
    '... default'
    $dir = "C:\Users\stefan\OneDrive - STAT-UP\boxstarter"

    '... from script location'
    $scriptpath = (Get-Variable MyInvocation -Scope Script).Value.MyCommand.Path
    if($scriptpath.length > 0) {
        $dir = Split-Path $scriptpath
    }
    '...done'


    '-----------------------------------------------------------------'
    'Update r-statup'
    '...switch to directory'
    cd ($dir + "\r-statup")
    '...run update.ps1'
    ./update.ps1
    '...done'


    '-----------------------------------------------------------------' 
    'Update rtools-statup'
    '...switch to directory'
    cd ($dir + "\rtools-statup")
    '...run update.ps1'
    ./update.ps1
    '...done'


    '-----------------------------------------------------------------'
    'Update rstudio-statup'
    '...switch to directory'
    cd ($dir + "\rstudio-statup")
    '...run update.ps1'
    ./update.ps1
    '...done'


} catch {
    'Error'
} finally {
    cd $olddir
}

