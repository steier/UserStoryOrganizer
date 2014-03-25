tests
testStore
	| story1 story2 story3 list |
	UsUserStoryModel reset.
	
	story1 := UsUserStoryModel new.
	story2 := UsUserStoryModel new.
	story3 := UsUserStoryModel new.
	
	UsUserStoryModel save: story1.
	UsUserStoryModel save: story2.
	UsUserStoryModel save: story3.
	
	list := UsUserStoryModel all.
	self assert: [list size = 3].
	self assert: list includes: story3.
	self assert: list includes: story1.
	self assert: list includes: story2.

	UsUserStoryModel remove: story2.
	
	list := UsUserStoryModel all.
	self assert: [list size = 2].
	self assert: list includes: story3.
	self assert: list includes: story1.
	
	UsUserStoryModel reset.