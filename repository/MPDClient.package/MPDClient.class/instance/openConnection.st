connection
openConnection
	| address |
	self canReuseConnection ifTrue: [ ^ self ].
	self closeConnection.
	address := NetNameResolver addressForName: self host timeout: self dnsTimeout. 
	connection := ZdcSocketStream openConnectionToHost: address port: self port.
	connection timeout: self socketStreamTimeout.
	in := ZnCharacterReadStream on: connection.
	out := ZnCharacterWriteStream on: connection.
	self readConnectionResponse ifFalse: [ self closeConnection ]