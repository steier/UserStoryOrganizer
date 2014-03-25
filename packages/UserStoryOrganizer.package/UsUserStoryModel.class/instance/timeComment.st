accessing
timeComment
	timeComment ifNil: [
		timeComment := OrderedCollection new.
		].
	^ timeComment.