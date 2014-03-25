accessing
title
	title ifNil: [
		title := 'Iteration ',(UsIterationModel all size+1).
		].
	^ title.