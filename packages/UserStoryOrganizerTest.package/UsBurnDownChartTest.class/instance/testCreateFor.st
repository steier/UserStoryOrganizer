test
testCreateFor
	| sut iteration |
	iteration := UsIterationModel new.
	sut := UsBurnDownChart for: iteration.
	self assert: [sut iterationModel == iteration.].