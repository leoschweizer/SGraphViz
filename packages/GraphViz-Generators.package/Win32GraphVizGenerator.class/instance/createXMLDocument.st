creation
createXMLDocument

	| file parser xml |
	file := self make: #dot.
	file := self launchDot2Gxl: file.
	
	parser := Smalltalk at: #XMLDOMParser ifAbsent: [nil].
	xml := FileStream readOnlyFileNamed: file.
	^ [parser
		ifNil: [xml contents]
		ifNotNil: [parser parseDocumentFrom: xml]] ensure: [xml close. self cleanUpIntermediateFilesAsAppropriate]