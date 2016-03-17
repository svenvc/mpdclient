commands
consume: boolean
	self sendCommand: #consume withArguments: { boolean ifTrue: [ 1 ] ifFalse: [ 0 ] }.
	^ self readResponse 