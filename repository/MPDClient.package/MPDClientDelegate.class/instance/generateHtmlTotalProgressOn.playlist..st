html
generateHtmlTotalProgressOn: html playlist: playlistItems
	| playlistIndex total elapsed |
	playlistIndex := self playlistIndex.
	total := (playlistItems collect: [ :each | each at: #Time ifAbsent: [ 0 ] ]) sum.
	elapsed := (playlistItems 
		select: [ :each | (each at: #Pos) < playlistIndex ] 
		thenCollect: [ :each | each at: #Time ifAbsent: [ 0 ] ]) inject: 0 into: [ :x :y | x + y ].
	self isPlaying ifTrue: [ elapsed := elapsed + self time first ].
	html tag: #div class: 'progress c2' do: [ 
		self renderHtmlMenuOn: html elements: { 
			[ html str: '+', (self renderDuration: elapsed) ].
			[ html str: '-', 
				(self renderDuration: (total - elapsed <= 0 
					ifTrue: [ 0 ] ifFalse: [ total - elapsed ])) ] } ]