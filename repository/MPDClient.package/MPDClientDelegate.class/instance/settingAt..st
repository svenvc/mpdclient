accessing
settingAt: key
	self assert: (#(consume repeat random single) includes: key).
	^ mutex critical: [ (self state at: key ifAbsent: [ 0 ]) = 1 ]