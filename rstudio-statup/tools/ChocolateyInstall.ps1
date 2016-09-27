try {
	$packageArgs = @{
		packageName = 'rstudio-statup'
		fileType = 'exe'
		silentArgs = '/S'
		url64bit = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-1.0.19.exe'
		checksum64 = '12eff5e892c237e816cc0e19eb9466c32db10586d399849eb0d57412bd32374a'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs

    'Successfully installed rstudio-statup'
} catch {
	throw $_.Exception
}
