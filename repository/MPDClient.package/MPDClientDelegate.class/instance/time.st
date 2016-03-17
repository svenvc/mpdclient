accessing
time
	^ mutex critical: [ $: split: (self state at: #time ifAbsent: [ '0:0' ]) ]