specs
statistics
	^ {
		#songs -> { '# Songs' }.
		#artists -> { '# Artists' }.
		#albums -> { '# Albums' }.
		#'db_playtime' -> { 'Duration'. [ :value :out | value seconds printHumanReadableOn: out ] }.
		"#playtime -> { 'Played'. [ :value :out | out print: value seconds ] }."
	 }