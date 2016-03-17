private
renderFilePath: url on: html
	([ url asUrl isHttp ] on: Error do: [ false ])
		ifTrue: [ html str: url ]
		ifFalse: [ 
			url asFileReference pathSegments 
				do: [ :each | html str: each ]
				separatedBy: [ html space; tag: #span class: #c6 with: '>'; space ] ]