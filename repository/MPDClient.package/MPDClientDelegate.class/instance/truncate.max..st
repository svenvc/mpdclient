private
truncate: string max: size
	^ string size > size
		ifTrue: [ | half |
			half := size - 5 // 2.
			String new: half * 2 + 5 streamContents: [ :out |
				out next: half putAll: string startingAt: 1.
				out nextPutAll: ' ... '.
				out next: half putAll: string startingAt: string size - half ] ]
		ifFalse: [ string ]