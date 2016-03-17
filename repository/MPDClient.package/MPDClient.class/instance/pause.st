commands
pause
	self sendCommand: #pause withArguments: #(1).
	^ self readResponse 