testing
isStateUpToDate
	| lastStateUpdate |
	state ifNil: [ ^ false ].
	lastStateUpdate := state at: #timestamp ifAbsent: [ 0 ].
	^ Time totalSeconds - lastStateUpdate < self cachedStateTimeout