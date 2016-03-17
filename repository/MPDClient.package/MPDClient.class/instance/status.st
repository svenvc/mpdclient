commands
status
	self sendCommand: #status withArguments: #().
	^ self readResponse 