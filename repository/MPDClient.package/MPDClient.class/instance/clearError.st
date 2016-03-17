commands
clearError
	self sendCommand: #clearerror withArguments: #().
	^ self readResponse 