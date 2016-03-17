commands
listPlaylists
	self sendCommand: #listplaylists withArguments: #().
	^ self readResponseLsInfo
