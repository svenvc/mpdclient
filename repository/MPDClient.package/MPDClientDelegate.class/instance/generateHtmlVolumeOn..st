html
generateHtmlVolumeOn: html
	self renderHtmlMenuOn: html elements: { 
		[ html tag: #a attributes: #(href '?do=down') with: #Down ].
		[ html tag: #span class: #c2 do: [
				html format: 'Volume {1}%' with: { self volume } ] ].
		[ html tag: #a attributes: #(href '?do=up') with: #Up ] }