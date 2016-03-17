protocol
withLine: line keyValueDo: block
	(line indexOf: $: ifAbsent: [ nil ])
		ifNotNil: [ :colonPosition | | key value |
			key := (line copyFrom: 1 to: colonPosition - 1) asSymbol.
			value := (line copyFrom: colonPosition + 1 to: line size) trimBoth.
			(value allSatisfy: [ :each | '0123456789+-.' includes: each ])
				ifTrue: [ value := NumberParser parse: value onError: [ value ] ].
			block value: key value: value ]