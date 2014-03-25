tests
testDontSetEndDateTwice
	| sut endDate |
	sut := UsUserStoryModel new.
	sut status: #new.
	sut status: #completed.
	endDate := sut endDate.
	Delay forMilliseconds: 100.
	sut status: #completed.
	self assert: [sut endDate = endDate. ].
