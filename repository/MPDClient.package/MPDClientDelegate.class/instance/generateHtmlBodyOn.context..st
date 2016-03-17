html
generateHtmlBodyOn: html context: context
	html tag: #body do: [ 
		html tag: #div class: #main do: [  
			self state
				ifNil: [ 
					html tag: #h2 class: #c5 with: #Error.
					html tag: #div do: [ 
						html 
							format: 'Cannot connect to MPD @ {1}:{2}' 
							with: { self host. self port } ] ]
				ifNotNil: [ 
					self perform: (context at: #page) with: html with: context ] ] ]