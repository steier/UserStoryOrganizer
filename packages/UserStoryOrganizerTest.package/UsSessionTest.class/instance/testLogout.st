tests
testLogout
	self session login: self user.
	self session logout.
	self assert: [self session isLoggedIn not.].
	