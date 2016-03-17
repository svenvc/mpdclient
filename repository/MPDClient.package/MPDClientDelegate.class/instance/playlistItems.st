accessing
playlistItems
	^ self withClientDo: [ :mpdClient | mpdClient playlistInfo ]