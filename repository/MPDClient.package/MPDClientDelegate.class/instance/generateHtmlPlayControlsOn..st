html
generateHtmlPlayControlsOn: html
	self renderHtmlMenuOn: html elements: { 
		[ html tag: #a attributes: #(href '?do=prev') with: #Prev ].
		[ self isPlaying 
			ifTrue: [ html tag: #a attributes: #(href '?do=pause') with: #Pause ] 
			ifFalse: [ html tag: #a attributes: #(href '?do=play') with: #Play ] ].
		[ html tag: #a attributes: #(href '?do=next') with: #Next ] }