actions
doLoad: context
	((context at: #uri) queryAt: #target ifAbsent: [ ])
		ifNotNil: [ :url | 
			self withClientDo: [ :mpdClient | mpdClient load: url ] ]