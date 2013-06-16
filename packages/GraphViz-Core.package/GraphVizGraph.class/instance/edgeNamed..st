accessing
edgeNamed: anAssociation

	| edge |
	edge := edges 
		detect: [:each | each key = anAssociation] 
		ifNone: [nil].
	
	edge ifNil:
		[self subgraphs do:
			[:each |
			edge := each edgeNamed: anAssociation.
			edge ifNotNil: [^ edge]]].
	
	^ edge value