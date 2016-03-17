commands
volume: percent
	self assert: (percent between: 0 and: 100).
	self sendCommand: #setvol withArguments: { percent }.
	^ self readResponse 