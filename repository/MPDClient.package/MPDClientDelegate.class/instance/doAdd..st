actions
doAdd: context
	((context at: #uri) queryAt: #target ifAbsent: [ nil ])
		ifNotNil: [ :url | 
			self withClientDo: [ :mpdClient | mpdClient add: url ] ]