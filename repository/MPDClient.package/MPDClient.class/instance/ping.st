commands
ping
	self sendCommand: #ping withArguments: #().
	^ self readResponse 