actions
doPause: context
	self withClientDo: [ :mpdClient | mpdClient pause ]