accessing
volume
	^ mutex critical: [ self state at: #volume ]