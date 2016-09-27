try {
	$packageArgs = @{
		packageName = 'git-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
		url64bit = 'https://github.com/git-for-windows/git/releases/download/v2.10.0.windows.1/Git-2.10.0-64-bit.exe'
		checksum64 = 'd624e08991a7a28b7156e384503228273e2da4c74c20b21152a97f4a304886da'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    'Successfully installed git-statup'
} catch {
	throw $_.Exception
}
