try {
	$packageArgsRtools = @{
		packageName = 'rtools-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT'
		url = 'https://cran.r-project.org/bin/windows/Rtools/Rtools34.exe'
		checksum = ''
		checksumType = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsRtools
	Install-ChocolateyPath 'c:\Rtools\bin;c:\Rtools\mingw_64\bin' 'Machine'

    'Successfully installed r-statup'
} catch {
	throw $_.Exception
}
