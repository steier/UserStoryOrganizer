tests
testCreateFor
	| userStory tableItem |
	userStory := UsUserStoryModel new.
	tableItem := UsUserStoryTableItem for: userStory and: nil.
	self
		assert: [tableItem userStoryModel == userStory].