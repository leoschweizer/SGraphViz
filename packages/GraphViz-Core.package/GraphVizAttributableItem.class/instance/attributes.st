accessing
attributes

	^ (Dictionary newFrom: inheritedStyle attributes copy) addAll: attributes; yourself