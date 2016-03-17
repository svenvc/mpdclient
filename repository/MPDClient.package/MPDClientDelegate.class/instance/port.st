accessing
port
	^ port ifNil: [ port := 6600 ]