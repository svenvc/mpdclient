testing
isPlaying
	^ mutex critical: [ (self state at: #state) = #play ]