accessing
state
	self isStateUpToDate ifTrue: [ ^ state ].
	self withClientDo: [ :mpdClient | 
		state := mpdClient status.
		state at: #currentSong put: mpdClient currentSong.
		state at: #timestamp put: Time totalSeconds ].
	^ state