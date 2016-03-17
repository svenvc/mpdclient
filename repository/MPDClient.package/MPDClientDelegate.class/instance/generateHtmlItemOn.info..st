html
generateHtmlItemOn: html info: info
	| first second time |
	first := (info at: #Title ifAbsent: [ '' ]) asString.
	second := (info at: #Album ifAbsent: [ info at: #Name ifAbsent: [ '---' ] ]) asString.
	info at: #Artist ifPresent: [ :artist | second := second, ' - ', artist asString ].
	time := self renderDuration: (info at: #Time ifAbsent: [ 0 ]).							
	html 
		tag: #span class: #l1 with: first;
		tag: #br;
		tag: #span class: #l2 with: second;
		space;
		tag: #span class: 'l3 c3' with: time