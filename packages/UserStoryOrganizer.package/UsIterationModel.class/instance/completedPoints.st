calculate
completedPoints
	| points |
	points := 0.
	self stories do: [ :story |
		(story status = #completed) 
			ifTrue: [
				points := points + story points.
				].
		].
	^points.