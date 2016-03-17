private
resolvePage: context
	| page |
	page := (context at: #uri) queryAt: #page ifAbsent: [ 'playback' ].
	page := ('generateHtml{1}PageOn:context:' format: { page capitalized }) asSymbol.
	(self respondsTo: page) 
		ifFalse: [ page := #generateHtmlPlaybackPageOn:context: ].
	context at: #page put: page