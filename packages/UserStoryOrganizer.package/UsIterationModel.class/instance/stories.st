store
stories
	^UsUserStoryModel all select: [ :story | 
		story iteration 
			ifNil: [false] 
			ifNotNil: [self id = story iteration id]
		].