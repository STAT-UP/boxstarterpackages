try {
	$packageArgs = @{
		packageName = 'rstudio.statup'
		fileType = 'exe'
		silentArgs = '/S'
		url64bit = 'https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-0.99.1289.exe'
		checksum64 = 'C64881648FE4E87EAF7C4DC167995BE98E906E2F5450CD96816730C90D7C93AA'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    Write-ChocolateySuccess 'RStudio.StatUp'
} catch {
	Write-ChocolateyFailure 'RStudio.StatUp' $($_.Exception.Message)
	throw
}