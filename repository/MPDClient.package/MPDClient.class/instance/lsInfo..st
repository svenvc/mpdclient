commands
lsInfo: uri
	self sendCommand: #lsinfo withArguments: { uri }.
	^ self readResponseLsInfo