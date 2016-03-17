accessing
libraryItemsAt: url
	^ self withClientDo: [ :mpdClient | mpdClient lsInfo: url ]