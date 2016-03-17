private
process: request
	| context |
	context := { #uri -> request uri } asDictionary.
	self resolvePage: context. 
	self handleAction: context. 
	^ context