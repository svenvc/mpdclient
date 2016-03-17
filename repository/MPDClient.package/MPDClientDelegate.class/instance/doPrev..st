actions
doPrev: context
	self withClientDo: [ :mpdClient | mpdClient previous ]