commands
playlistInfo
	self sendCommand: #playlistinfo withArguments: #().
	^ self readResponseLsInfo