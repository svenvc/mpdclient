commands
load: playlist
	self sendCommand: #load withArguments: { playlist }.
	^ self readResponseLsInfo
