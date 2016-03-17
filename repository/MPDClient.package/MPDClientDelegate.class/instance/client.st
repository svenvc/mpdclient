accessing
client
	^ client ifNil: [ 
		client := MPDClient new 
			host: self host; 
			port: self port; 
			yourself ]