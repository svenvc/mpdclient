commands
repeat: boolean
	self sendCommand: #repeat withArguments: { boolean ifTrue: [ 1 ] ifFalse: [ 0 ] }.
	^ self readResponse 