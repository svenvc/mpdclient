actions
doRandom: context
	((context at: #uri) queryAt: #pos ifAbsent: [ ])
		ifNotNil: [ :pos | 
			self withClientDo: [ :mpdClient | mpdClient random: pos = '1' ] ]