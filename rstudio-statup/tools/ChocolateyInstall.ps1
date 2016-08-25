try {
	$packageArgs = @{
		packageName = 'rstudio-statup'
		fileType = 'exe'
		silentArgs = '/S'
		url = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-0.99.1292.exe'
		checksum = 'af3d1af96bf117ca941dd8aeb097fc1c355a1108519ddf8e9cbc2cef54097e56'
#		checksumType = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    'Successfully installed rstudio-statup'
} catch {
	throw $_.Exception
}
