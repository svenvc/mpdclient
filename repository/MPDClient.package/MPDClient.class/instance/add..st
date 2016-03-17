commands
add: url
	^ self withLongSocketStreamTimeout: [ 
		self sendCommand: #add withArguments: { url }.
		self readResponseLsInfo ]
