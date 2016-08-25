try {
	$packageArgs = @{
		packageName = 'git-statup'
		fileType = 'exe'
		silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
		url64bit = 'https://github.com/git-for-windows/git/releases/download/v2.9.3.windows.1/Git-2.9.3-64-bit.exe'
		checksum64 = '1a642cf2914e18fa868b1ed2c6d1df4a46ba8ef30355fd1965850895a658e024'
#		checksumType = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgs
	# $packageName $fileType $silentArgs $url

    'Successfully installed git-statup'
} catch {
	throw $_.Exception
}
