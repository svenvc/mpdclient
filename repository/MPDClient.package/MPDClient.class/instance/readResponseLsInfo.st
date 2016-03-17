protocol
readResponseLsInfo
	| lines data |
	^ Array streamContents: [ :entries |
		lines := self readResponseLines readStream.
		[ lines atEnd ] whileFalse: [
			data := self readResponseLsInfoEntryFrom: lines.
			data isEmpty ifFalse: [ entries nextPut: data ] ] ]