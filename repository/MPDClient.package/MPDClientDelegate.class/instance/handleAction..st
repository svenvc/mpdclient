private
handleAction: context
	| action |
	action := (context at: #uri) queryAt: #do ifAbsent: [ 'nothing' ].
	action := ('do', action capitalized, ':') asSymbol.
	(self respondsTo: action)
		ifTrue: [ 
			context at: #action put: action.
			self perform: action with: context.
			self clearState ]