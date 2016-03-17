accessing
currentSong
	^ mutex critical: [ self state at: #currentSong ]