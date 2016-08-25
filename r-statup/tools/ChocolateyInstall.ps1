try {
	$packageArgsR = @{
		packageName = 'r-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /DIR="C:\Program Files\R" /COMPONENTS="main,x64"'
		url64bit = 'https://cran.r-project.org/bin/windows/base/R-3.3.1-win.exe'
		checksum64 = '48d5b9812769e36b2893d3dba8d37ab49ceda8a2da220329f26c2c6470dfbb22'
#		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsR

    'Successfully installed r-statup'
} catch {
	throw $_.Exception
}
