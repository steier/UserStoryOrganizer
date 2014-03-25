casting
priorityToText: aPriority
	(#p1 = aPriority) ifTrue: [^'1'].
	(#p2 = aPriority) ifTrue: [^'2'].
	(#p3 = aPriority) ifTrue: [^'3'].
	(#p4 = aPriority) ifTrue: [^'4'].
	(#p5 = aPriority) ifTrue: [^'5'].
	(Exception new messageText: 'Invalid priority') signal.