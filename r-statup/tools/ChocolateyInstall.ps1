try {
	$packageArgsR = @{
		packageName = 'r-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /DIR="C:\Program Files\R" /COMPONENTS="main,x64"'
		url64bit = 'https://cran.r-project.org/bin/windows/base/R-3.3.1-win.exe'
		checksum64 = '48D5B9812769E36B2893D3DBA8D37AB49CEDA8A2DA220329F26C2C6470DFBB22'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsR

    'Successfully installed r-statup'
} catch {
	throw $_.Exception
}
