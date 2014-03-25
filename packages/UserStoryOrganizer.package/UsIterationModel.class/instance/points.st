accessing
points
	| points |
	points := 0.
	self stories do: [ :story |
		points := points + story points.
		].
	^points.