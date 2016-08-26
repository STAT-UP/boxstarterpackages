try {
	$packageArgs = @{
		packageName = 'rstudio-statup'
		fileType = 'exe'
		silentArgs = '/S'
		url64bit = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-0.99.1294.exe'
		checksum64 = '3ecf104ad7de2d72640c04967fb958b6c648f5df7224506369503e4cb3173f4a'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs

    'Successfully installed rstudio-statup'
} catch {
	throw $_.Exception
}
