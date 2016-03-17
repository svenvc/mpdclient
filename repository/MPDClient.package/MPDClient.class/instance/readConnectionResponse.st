protocol
readConnectionResponse
	| line |
	line := in nextLine.
	line ifNil: [ ^ false ].
	^ (line beginsWith: 'OK MPD')
		ifTrue: [ 
			protocolVersion := line copyFrom: 'OK MPD' size + 2 to: line size.
			true ]
		ifFalse: [ false ]