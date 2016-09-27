try {
	$packageArgsR = @{
		packageName = 'bitvise-statup'
		fileType = 'exe'
		silentArgs = '-acceptEULA -noDesktopIcon'
		url64bit = 'https://bvdl.s3-eu-west-1.amazonaws.com/BvSshClient-Inst.exe'
		checksum64 = 'c90d950ff4d6cc59bb923443a06e4d309a2d312cb470a41d42c6afd54ece79af'
		checksumType64 = 'sha256'
	}
	
	Install-ChocolateyPackage @packageArgsR

    'Successfully installed bitvise-statup'
} catch {
	throw $_.Exception
}
