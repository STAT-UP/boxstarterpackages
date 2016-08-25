try {
	$packageArgsRtools = @{
		packageName = 'rtools-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
		url64bit = 'https://cran.r-project.org/bin/windows/Rtools/Rtools34.exe'
		checksum64 = '194fbc35e9fee6c653c17c473934ac3e65697b8316612cba4e1d9f367c229eba'
#		checksumType = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsRtools
	Install-ChocolateyPath 'c:\Rtools\bin;c:\Rtools\mingw_64\bin' 'Machine'

    'Successfully installed r-statup'
} catch {
	throw $_.Exception
}
