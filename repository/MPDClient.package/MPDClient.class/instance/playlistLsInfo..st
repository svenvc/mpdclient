commands
playlistLsInfo: name
	self sendCommand: #listplaylistinfo withArguments: { name }.
	^ self readResponseLsInfo