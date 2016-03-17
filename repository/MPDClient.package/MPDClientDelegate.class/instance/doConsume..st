actions
doConsume: context
	((context at: #uri) queryAt: #pos ifAbsent: [ ])
		ifNotNil: [ :pos | 
			self withClientDo: [ :mpdClient | mpdClient consume: pos = '1' ] ]