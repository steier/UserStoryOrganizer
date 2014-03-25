tests
testNotLoggedIn
	self assert: [self session isLoggedIn not.].
	