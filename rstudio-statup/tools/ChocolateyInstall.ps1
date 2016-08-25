try {
	$packageArgs = @{
		packageName = 'rstudio-statup'
		fileType = 'exe'
		silentArgs = '/S'
		url = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-0.99.1292.exe'
		checksum = ''
		checksumType = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    'Successfully installed rstudio-statup'
} catch {
	throw $_.Exception
}
