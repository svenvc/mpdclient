actions
doDown: context
	self volume > 0
		ifTrue: [ 
			self withClientDo: [ :mpdClient | 
				mpdClient volume: self volume - 1 ] ]