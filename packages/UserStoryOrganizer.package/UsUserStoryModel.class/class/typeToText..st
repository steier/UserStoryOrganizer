casting
typeToText: aType
	(#UserStory = aType) ifTrue: [^'UserStory'].
	(#Task = aType) ifTrue: [^'Task'].
	(Exception new messageText: 'Invalid type') signal.