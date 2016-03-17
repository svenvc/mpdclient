html
generateHtmlStatsOn: html 
	| stats |
	html tag: #dl class: #details do: [  
		stats := self stats.
		self statistics do: [ :each | | value |
			value := stats at: each key ifAbsent: [ ].
			value ifNotNil: [
				html tag: #dt with: each value first.
				html tag: #dd do: [ 
					each value size > 1 
						ifTrue: [ each value second value: value value: html ]
						ifFalse: [ html str: value asString ] ] ] ] ]
