layout
layoutEdges: edgeList
	
	| newEdges |
	"format => edge tail head n x1 y1 .. xn yn [label xl yl] style color"
	
	newEdges := OrderedCollection new.
	
	edgeList withIndexDo:
		[:each :index | | newEdge positionOfStyle |
		newEdge := GraphVizEdge new 
			id: (each second asNumber -> each third asNumber);
			fromNode: (self nodeNamed: each second);
			toNode: (self nodeNamed: each third);
			inheritedStyle: currentEdgeStyle.
		
		newEdge ifNotNil:
			[ | numberOfVertices pos |
			numberOfVertices := each fourth asNumber.
			positionOfStyle := 5 + (numberOfVertices * 2).
			pos := String streamContents:
				[:stream |
				5 to: positionOfStyle - 1 by: 2 do: 
					[:i |
					stream
						nextPutAll: ((each at: i) asNumber * self class pointsPerInch) rounded asString;
						nextPut: $,;
						nextPutAll: ((each at: i + 1) asNumber * self class pointsPerInch) rounded asString;
						nextPutAll: ' ']].
				newEdge pos: pos allButLast.
				newEdge style: (each at: positionOfStyle).
				newEdge color: (each at: positionOfStyle + 1)].
			newEdges add: newEdge].
	
	children removeAllSuchThat: [:each | each isEdge].
	children addAll: newEdges.
	edges := newEdges.