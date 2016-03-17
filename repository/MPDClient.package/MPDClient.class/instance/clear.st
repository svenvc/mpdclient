commands
clear
	self sendCommand: #clear withArguments: #().
	^ self readResponse 