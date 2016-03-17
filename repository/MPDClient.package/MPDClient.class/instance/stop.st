commands
stop
	self sendCommand: #stop withArguments: #().
	^ self readResponse 