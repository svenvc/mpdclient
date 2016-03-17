accessing
detailAt: key
	^ mutex critical: [ 
		self 
			state at: key 
			ifAbsent: [ self currentSong at: key ifAbsent: [ ] ] ]