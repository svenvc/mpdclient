html pages
generateHtmlPlaylistPageOn: html context: context
	| playlistItems playlistIndex |
	self generateHtmlTabsHeaderOn: html select: #playlist.
	playlistItems := self playlistItems.
	playlistItems isEmpty ifTrue: [ ^ html tag: #span class: #c3 with: '---' ].
	playlistIndex := self playlistIndex.
	html tag: #ol class: #playlist do: [
		playlistItems do: [ :each | | position |
			position := each at: #Pos.
			html tag: #li class: (position = playlistIndex ifTrue: [ 'c5' ] ifFalse: [ 'c1' ]) do: [ 
				html 
					tag: #a
					attributes: { #href. '?page=playlist&do=play&pos=', position asString }
					do: [ self generateHtmlItemOn: html info: each ] ] ] ].
	self generateHtmlTotalProgressOn: html playlist: playlistItems. 
	self renderHtmlMenuOn: html elements: { 
		[ html tag: #a attributes: #(href '?do=clear') with: #Clear ] }