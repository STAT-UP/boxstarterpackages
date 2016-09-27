try {
	$packageArgsR = @{
		packageName = 'notepadplusplus-statup'
		fileType = 'exe'
		silentArgs = '/S'
		url64bit = 'https://notepad-plus-plus.org/repository/6.x/6.9.2/npp.6.9.2.Installer.exe'
		checksum64 = 'a329d076a349c9bffa02bfe670e1d9beaa21ce10a695db2d675e9346b6e72fca'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsR

    'Successfully installed notepadplusplus-statup'
} catch {
	throw $_.Exception
}
