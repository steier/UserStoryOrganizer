tests
testDelete
	|admin developer customer|
	admin := self admin.
	developer := self developer.
	customer := self customer.
		
	UsUserModel save: admin.
	UsUserModel save: developer.
	UsUserModel save: customer.
	
	self assert: [UsUserModel all size=3].
	
	developer delete.
	
	self assert: [UsUserModel all size=2].
	
	self assert: ['deleted user' = developer userName].
	self assert: [nil = developer company ].
	self assert: [nil = developer email ].
	self assert: [false = developer isCustomer ].
	self assert: [false = developer isAdministrator ].
	self assert: [false = developer isDeveloper ].
	self assert: [nil = developer password ]