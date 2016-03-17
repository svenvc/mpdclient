private
renderHtmlMenuOn: html elements: elements
	html tag: #p class: #menu do: [
		elements 
			do: [ :each | each value ]
			separatedBy: [ html space; tag: #span class: #c6 with: '|'; space ] ]