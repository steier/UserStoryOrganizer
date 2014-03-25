tests
testCreateFor
	| user tableItem |
	user := UsUserModel new.
	tableItem := UsUserOverviewItemComponent for: user and: nil.
	self assert: [tableItem userModel == user.].