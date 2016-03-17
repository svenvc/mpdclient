html
generateHtmlProgressOn: html
	| time elapsed total percent left |
	time := self time.
	elapsed := time first asNumber.
	total := time second asNumber.
	percent := total = 0 ifTrue: [ 0 ] ifFalse: [ (elapsed / total * 100.0) truncated ].
	left := total = 0 ifTrue: [ 0 ] ifFalse: [ total - elapsed ].
	html 
		tag: #div 
		class: (self isPlaying ifTrue: [ 'progress c2' ] ifFalse: [ 'progress c4' ]) 
		do: [ 
			self renderHtmlMenuOn: html elements: { 
				[ html str: '+'; str: (self renderDuration: elapsed) ].
				[ html str: (percent printPaddedWith: Character space to: 3); str: '%' ].
				[ html str: '-'; str: (self renderDuration: left) ] } ]