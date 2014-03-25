tests
testLoggedIn
	self session login: self user.
	self assert: [self session isLoggedIn.].
	