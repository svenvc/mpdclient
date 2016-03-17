commands
play: playlistPosition
	self sendCommand: #play withArguments: { playlistPosition }.
	^ self readResponse 