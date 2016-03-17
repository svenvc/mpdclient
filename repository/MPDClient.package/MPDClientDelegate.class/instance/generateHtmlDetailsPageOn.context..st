html pages
generateHtmlDetailsPageOn: html context: context
	| empty |
	empty := true.
	self generateHtmlTabsHeaderOn: html select: #playback.
	html tag: #em class: #subtitle with: #Details.
	html tag: #dl class: #details do: [  
		self details do: [ :each | | value |
			value := self detailAt: each key.
			value ifNotNil: [
				empty := false. 
				html tag: #dt with: each value first.
				html tag: #dd do: [  
					each value size > 1 
						ifTrue: [ each value second value: value value: html ]
						ifFalse: [ html str: value asString ] ] ] ] ].
	empty ifTrue: [ html tag: #span class: #c3 with: '---' ]