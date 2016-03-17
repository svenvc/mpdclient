protocol
readResponseLsInfoEntryFrom: linesStream
	| entryData entryDone |
	entryData := Dictionary new.
	entryDone := false.
	[ linesStream atEnd | entryDone ] whileFalse: [ 
		self 
			withLine: linesStream peek 
			keyValueDo: [ :key :value |
				(entryData notEmpty and: [ #(file directory playlist) includes: key ])
					ifTrue: [ entryDone := true ]
					ifFalse: [ 
						linesStream next. 
						entryData at: key put: value ] ] ].
	^ entryData