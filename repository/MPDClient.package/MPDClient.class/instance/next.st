commands
next
	self sendCommand: #next withArguments: #().
	^ self readResponse 