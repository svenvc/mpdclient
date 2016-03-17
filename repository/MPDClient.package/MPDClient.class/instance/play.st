commands
play
	self sendCommand: #play withArguments: #().
	^ self readResponse 