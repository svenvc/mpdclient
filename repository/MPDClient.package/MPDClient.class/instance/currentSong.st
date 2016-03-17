commands
currentSong
	self sendCommand: #currentsong withArguments: #().
	^ self readResponse 