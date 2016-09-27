try {
	$packageArgs = @{
		packageName = 'git-credential-manager-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
		url64bit = 'https://github.com/Microsoft/Git-Credential-Manager-for-Windows/releases/download/v1.6.1/GCMW-1.6.1.exe'
		checksum64 = 'a4844baf6cf435766b6d44d264c6e084767b00ca402b3feeaf59c25055671e8c'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    'Successfully installed git-credential-manager-statup'
} catch {
	throw $_.Exception
}
