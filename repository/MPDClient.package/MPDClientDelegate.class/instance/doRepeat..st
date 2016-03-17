actions
doRepeat: context
	((context at: #uri) queryAt: #pos ifAbsent: [ ])
		ifNotNil: [ :pos | 
			self withClientDo: [ :mpdClient | mpdClient repeat: pos = '1' ] ]