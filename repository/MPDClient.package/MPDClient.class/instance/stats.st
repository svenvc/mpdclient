commands
stats
	self sendCommand: #stats withArguments: #().
	^ self readResponse 