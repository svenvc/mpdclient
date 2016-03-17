commands
single: boolean
	self sendCommand: #single withArguments: { boolean ifTrue: [ 1 ] ifFalse: [ 0 ] }.
	^ self readResponse 