connection
withConnectionDo: block
	^ [ 
			self openConnection.
			connection atEnd ifTrue: [ NetworkError signal ].
			block value ] 
		on: NetworkError 
		do: [ 
			"Try once more after a network failure"
			self closeConnection; openConnection.
			block value ] 