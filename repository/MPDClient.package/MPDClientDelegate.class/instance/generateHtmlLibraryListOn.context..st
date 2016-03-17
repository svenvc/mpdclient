html
generateHtmlLibraryListOn: html context: context
	| url target |
	url := (context at: #uri) queryAt: #url ifAbsent: [ '' ].
	html tag: #ul class: #library do: [ 
		(self libraryItemsAt: url) do: [ :each |
			html tag: #li do: [
				(each includesKey: #directory)
					ifTrue: [ 
						target := each at: #directory.
						html 
							tag: #a 
							attributes: { #href. '?page=library&url=' , target urlEncoded } 
							with: target asFileReference basename ]
					ifFalse: [ 
						(each includesKey: #playlist)
							ifTrue: [ | playlist |
								playlist := (each at: #playlist).
								"at top level assume a pure playlist, else maybe webradio"
								target := url isEmpty 
									ifTrue: [ playlist asFileReference basenameWithoutExtension ] 
									ifFalse: [ playlist ].
								html 
									tag: #a 
									attributes: { #href. '?page=library&do=load&target={1}&url={2}' 
																		format: { target urlEncoded. url urlEncoded } }
									with: playlist asFileReference basenameWithoutExtension ]
							ifFalse: [
								html 
									tag: #a
									attributes: { #href. '?page=library&do=add&target={1}&url={2}' format: { 
																		(each at: #file) urlEncoded. url urlEncoded } }
									do: [ self generateHtmlItemOn: html info: each ] ] ] ] ] ]