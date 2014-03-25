tests
testSetEndDate
	| sut before |
	sut := UsUserStoryModel new.
	sut status: #new.
	self assert: [sut endDate = nil.].
	before := DateAndTime now.
	sut status: #completed.
	self assert: [before <= sut endDate.].
	self assert: [sut endDate <= DateAndTime now.].