try {
	$packageArgs = @{
		packageName = 'rstudio.statup'
		fileType = 'exe'
		silentArgs = '/S'
		url64bit = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-0.99.1286.exe'
		checksum64 = '941A59E451E6DBE6117C0C15A770E44DA73E6A36F4BB634E9243AEDE1C25F66C'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    Write-ChocolateySuccess 'RStudio.StatUp'
} catch {
	Write-ChocolateyFailure 'RStudio.StatUp' $($_.Exception.Message)
	throw
}