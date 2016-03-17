accessing
socketStreamTimeout
	^ ZnConnectionTimeout value 
		ifNil: [ 2 "seconds" ]