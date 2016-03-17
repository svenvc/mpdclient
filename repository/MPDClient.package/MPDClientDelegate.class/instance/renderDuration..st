private
renderDuration: seconds
	| duration long |
	duration := seconds seconds.
	long := duration >= 1 hour.
	^ String new: (long ifTrue: [ 8 ] ifFalse: [ 5 ]) streamContents: [ :out |
			long ifTrue: [ 
				duration hours printOn: out base: 10 length: 2 padded: true.
				out nextPut: $: ].
			duration minutes printOn: out base: 10 length: 2 padded: true.
			out nextPut: $:.
			duration seconds printOn: out base: 10 length: 2 padded: true ]