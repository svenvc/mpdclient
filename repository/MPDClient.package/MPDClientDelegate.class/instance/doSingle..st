actions
doSingle: context
	((context at: #uri) queryAt: #pos ifAbsent: [ ])
		ifNotNil: [ :pos | 
			self withClientDo: [ :mpdClient | mpdClient single: pos = '1' ] ]