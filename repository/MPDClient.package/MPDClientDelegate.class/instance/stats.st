accessing
stats
	^ self withClientDo: [ :mpdClient | mpdClient stats ]