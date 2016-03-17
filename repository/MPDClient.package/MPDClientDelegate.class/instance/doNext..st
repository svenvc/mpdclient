actions
doNext: context
	self withClientDo: [ :mpdClient | mpdClient next ]