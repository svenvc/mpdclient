html
generateHtmlHeadOn: html
	html tag: #head do: [ 
		html tag: #title with: 'MPD Client'.
		html tag: #meta attributes: #(
				name viewport 
				content 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no').
		html tag: #style attributes: #(type 'text/css') with: self css ]