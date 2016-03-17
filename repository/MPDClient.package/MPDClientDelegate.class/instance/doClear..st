actions
doClear: context
	self withClientDo: [ :mpdClient | mpdClient clear "playlist"	]