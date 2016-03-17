protocol
handleError: line 
	self 
		clearError; 
		closeConnection.
	^ MPDClientError signalWith: line