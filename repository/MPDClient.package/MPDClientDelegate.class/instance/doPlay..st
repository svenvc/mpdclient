actions
doPlay: context
	self withClientDo: [ :mpdClient |
		((context at: #uri) queryAt: #pos ifAbsent: [ ])
			ifNil: [ mpdClient play ]
			ifNotNil: [ :position | mpdClient play: position ] ]