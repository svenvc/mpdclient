html pages
generateHtmlSettingsPageOn: html context: context
	self generateHtmlTabsHeaderOn: html select: #playback.
	html tag: #em class: #subtitle with: #Settings.
	html tag: #dl class: 'details settings' do: [
		#(consume repeat random single) do: [ :each | | value |
			value := self settingAt: each.
			html tag: #dt with: each capitalized.
			html tag: #dd do: [ 
				self renderHtmlMenuOn: html elements: { 
					[ html str: (value ifTrue: [ 'On' ] ifFalse: [ 'Off' ]) ]. 
					[ html 
						tag: #a 
						attributes: { 
							#href. '?page=settings&do={1}&pos={2}' 
											format: { each. value ifTrue: [ 0 ] ifFalse: [ 1 ] } } 
						with: (value ifTrue: [ 'Turn Off' ] ifFalse: [ 'Turn On' ]) ] } ] ] ]