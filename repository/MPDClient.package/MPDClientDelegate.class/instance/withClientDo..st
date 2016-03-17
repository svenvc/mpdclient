private
withClientDo: block
	^ mutex critical: [ 
		[ block value: self client ]
			on: Error 
			do: [ 
				self closeClient.
				block value: self client ] ]