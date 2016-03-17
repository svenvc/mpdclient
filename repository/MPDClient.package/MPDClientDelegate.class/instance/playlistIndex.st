accessing
playlistIndex
	^ mutex critical: [ self state at: #song ifAbsent: [ -1 ] ]