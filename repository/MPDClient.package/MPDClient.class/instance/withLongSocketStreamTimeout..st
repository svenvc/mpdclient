connection
withLongSocketStreamTimeout: block
	^ ZnConnectionTimeout 
		value: self longSocketStreamTimeout
		during: [ self withConnectionDo: block ]