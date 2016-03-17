html
generateHtmlCurrentSongOn: html
	| currentSong first second third formatter |
	currentSong := self currentSong.
	first := (currentSong at: #Title ifAbsent: [ '' ]) asString.
	second := (currentSong at: #Album ifAbsent: [ currentSong at: #Name ifAbsent: [ '---' ] ]) asString.
	third := (currentSong at: #Artist ifAbsent: [ '' ]) asString.
	formatter := [ :value :c1 :c2 | 
		html 
			tag: #div 
			class: (value size > 32 ifTrue: [ c1 ] ifFalse: [ c2 ])
			with: (self truncate: value max: 80) ].
	html tag: #div class: (self isPlaying ifTrue: [ #c1 ] ifFalse: [ #c4 ]) do: [ 
		formatter value: first value: 'c-title-c' value: 'c-title'. 
		formatter value: second value: 'c-album-c' value: 'c-album'. 
		formatter value: third value: 'c-artist-c' value: 'c-artist' ]