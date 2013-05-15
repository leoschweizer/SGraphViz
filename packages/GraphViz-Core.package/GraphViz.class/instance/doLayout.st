layout
doLayout

	| layout graphHeight graphWidth |
	layout := self asLayoutCoordinates.
	
	graphWidth := (layout first third asNumber * self class pointsPerInch) asNumber rounded.
	graphHeight := (layout first fourth asNumber * self class pointsPerInch) asNumber rounded.
	
	extent :=  graphWidth @ graphHeight.
	
	self flag: #ls. "should work wihtout this hack, but doesn't"
	layout := layout select: [:each | each isEmpty not].
	self layoutNodes: (layout select: [:each | each first = #node]).
	self layoutEdges: (layout select: [:each | each first = #edge]).