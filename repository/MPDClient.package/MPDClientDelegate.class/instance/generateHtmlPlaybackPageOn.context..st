html pages
generateHtmlPlaybackPageOn: html context: context
	self generateHtmlTabsHeaderOn: html select: #playback.
	self generateHtmlPlayControlsOn: html.
	self generateHtmlCurrentSongOn: html.
	self generateHtmlProgressOn: html.
	self renderHtmlMenuOn: html elements: { 
		[ html tag: #a attributes: #(href '?page=details') with: #Details ].
		[ html tag: #a attributes: #(href '?page=refresh') with: #Refresh ].
		[ html tag: #a attributes: #(href '?page=settings') with: #Settings ] }.
	self generateHtmlVolumeOn: html