html
generateHtmlLibraryTrailOn: html context: context
	| url elements |
	url := (context at: #uri) queryAt: #url ifAbsent: [ ^ self ].
	url isEmpty ifTrue: [ ^ self ].
	html tag: #h2 do: [
		elements := url asFileReference pathSegments.
		elements size = 1
			ifTrue: [ html str: elements anyOne ] 
			ifFalse: [ 
				elements allButLast inject: nil into: [ :parent :each | | sub |
					sub := parent ifNil: [ each ] ifNotNil: [ parent, '/', each ].
					html 
						tag: #a 
						attributes: { #href. '?page=library&url=' , sub urlEncoded }
						with: each.
					html space; tag: #span class: #c6 with: '>'; space.
					sub ].
				html 
					tag: #a 
					attributes: { #href. '?page=library&do=add&target={1}&url={1}' format: { url urlEncoded } }
					with: elements last ] ]