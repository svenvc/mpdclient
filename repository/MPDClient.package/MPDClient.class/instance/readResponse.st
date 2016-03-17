protocol
readResponse
	| data |
	data := Dictionary new.
	self readResponseLines do: [ :line |
		self withLine: line keyValueDo: [ :key :value |
			data at: key put: value ] ].
	^ data