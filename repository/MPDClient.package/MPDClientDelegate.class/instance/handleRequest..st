public
handleRequest: request
	| html context |
	context := self process: request.
	html := String streamContents: [ :out |
		self 
			generateHtmlPageOn: (ZnHtmlOutputStream on: out)
			context: context ].
	^ ZnResponse ok: (ZnEntity html: html)