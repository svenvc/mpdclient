specs
details
	^ {
		#Title -> { 'Title' }.
		#Album -> { 'Album' }.
		#Artist -> { 'Artist' }.
		#Name -> { 'Name' }.
		#Date -> { 'Date' }.
		#Time -> { 'Duration'. [ :value :out | out << (self renderDuration: value) ] }.
		#audio -> { 'Sample Rate'. [ :value :out | out print: ($: split: value) first asNumber / 1000.0; << ' kHz' ] }.
		#audio -> { 'Bit Depth'. [ :value :out | out << ($: split: value) second; << ' bit' ] }.
		#bitrate -> { 'Actual Rate'. [ :value :out | out print: value; << ' kbit/s' ] }.
		#file -> { 'File'. [ :value :out | self renderFilePath: value on: out ] }
	 }