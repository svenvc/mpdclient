protocol
readResponseLines
	lastUsed := Time totalSeconds.
	^ Array streamContents: [ :lines | | done |
		[ 
			done := false.
			in nextLine ifNotNil: [ :line |
				(line beginsWith: #ACK) 
					ifTrue: [ ^ self handleError: line ]
					ifFalse: [ 
						line = #OK 
							ifTrue: [ done := true ] 
							ifFalse: [ lines nextPut: line ] ] ].
			done | in atEnd ] whileFalse ]