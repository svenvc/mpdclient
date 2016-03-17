connection
closeConnection
	connection ifNil: [ ^ self ].
	[ connection close ] on: Error do: [ ].
	connection := in := out := lastUsed := nil