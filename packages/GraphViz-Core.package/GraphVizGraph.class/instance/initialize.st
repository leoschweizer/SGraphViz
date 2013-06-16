initialization
initialize

	super initialize.
	children := OrderedCollection new.
	nodes := Dictionary new.
	"edges := Dictionary new."
	edges := OrderedCollection new.
	directed := false.
	currentGraphReceiver := self.
	currentNodeStyle := GraphVizStyle new.
	currentEdgeStyle := GraphVizStyle new.