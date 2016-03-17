html pages
generateHtmlLibraryPageOn: html context: context
	self generateHtmlTabsHeaderOn: html select: #library.
	self generateHtmlLibraryTrailOn: html context: context.
	self generateHtmlLibraryListOn: html context: context. 
	((context at: #uri) queryAt: #url ifAbsent: [ '' ])
		ifEmpty: [ self generateHtmlStatsOn: html ]