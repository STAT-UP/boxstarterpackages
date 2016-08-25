$packageArgs = @{
	packageName = 'tortoisegit-statup'
	fileType = 'msi'
	silentArgs = ''
	url64bit = 'https://download.tortoisegit.org/tgit/2.2.0.0/TortoiseGit-2.2.0.0-64bit.msi'
	checksum64 = 'ae707c7448a8921dc5acb34764a9731ec0fee897e9e6a49475342869e9d7bc50'
#		checksumType = 'sha256'
}
	
Install-ChocolateyPackage @packageArgs
# $packageName $fileType $silentArgs $url

'Successfully installed tortoisegit-statup'

