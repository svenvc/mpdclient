html
generateHtmlPageOn: html context: context
	html html5.
	html tag: #html do: [ 
		self generateHtmlHeadOn: html.
		self generateHtmlBodyOn: html context: context ]