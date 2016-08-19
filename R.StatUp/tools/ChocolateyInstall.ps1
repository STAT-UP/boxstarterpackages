try {
	$packageArgsR = @{
		packageName = 'r.statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /DIR="C:\Program Files\R" /COMPONENTS="main,x64"'
		url64bit = 'https://cran.r-project.org/bin/windows/base/R-3.3.1-win.exe'
		checksum64 = '48D5B9812769E36B2893D3DBA8D37AB49CEDA8A2DA220329F26C2C6470DFBB22'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsR
	
	$packageArgsRtools = @{
		packageName = 'rtools.statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT'
		url64bit = 'https://cran.r-project.org/bin/windows/Rtools/Rtools34.exe'
		checksum64 = '194FBC35E9FEE6C653C17C473934AC3E65697B8316612CBA4E1D9F367C229EBA'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsRtools
	Install-ChocolateyPath 'c:\Rtools\bin;c:\Rtools\mingw_64\bin' 'Machine'


    Write-ChocolateySuccess 'R.StatUp'
} catch {
	Write-ChocolateyFailure 'R.StatUp' $($_.Exception.Message)
	throw
}