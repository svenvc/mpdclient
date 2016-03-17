private
closeClient
	client ifNotNil: [ 
		[ client close ] on: Error do: [ ].
		client := nil ]