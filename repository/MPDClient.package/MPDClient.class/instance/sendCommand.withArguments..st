protocol
sendCommand: command withArguments: arguments
	self withConnectionDo: [
		out nextPutAll: command; space.
		arguments 
			do: [ :each | out nextPut: $"; nextPutAll: each asString; nextPut: $" ]
			separatedBy: [ out space ].
		out lf; flush ]