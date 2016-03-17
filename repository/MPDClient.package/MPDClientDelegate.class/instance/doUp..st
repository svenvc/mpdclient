actions
doUp: context
	self volume < 100
		ifTrue: [ 
			self withClientDo: [ :mpdClient | 
				mpdClient volume: self volume + 1 ] ]