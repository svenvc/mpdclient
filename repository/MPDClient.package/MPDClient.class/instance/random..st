commands
random: boolean
	self sendCommand: #random withArguments: { boolean ifTrue: [ 1 ] ifFalse: [ 0 ] }.
	^ self readResponse 