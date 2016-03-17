html
generateHtmlTabsHeaderOn: html select: page
	self 
		renderHtmlMenuOn: html 
		elements: (#(library playback playlist) collect: [ :each |
			[ html 
				tag: #a 
				attributes: { 
					#href. '?page=', each.
					#class. each = page ifTrue: [ 'tab-selected' ] ifFalse: [ 'tab' ] } 
				with: each capitalized ] ])