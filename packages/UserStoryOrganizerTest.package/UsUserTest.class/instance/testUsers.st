tests
testUsers
	|admin developer customer|
	admin := self admin.
	developer := self developer.
	customer := self customer.
		
	customer assert: [customer userName = 'Marcel Wichtig'].	
		
	UsUserModel save: admin.
	UsUserModel save: developer.
	UsUserModel save: customer.
	
	self assert: [UsUserModel all size=3].
	UsTestUtil testGetterSetterForClass: customer with: #userName with: #userName: with: 'Marcel Wichtig'.
	UsTestUtil testGetterSetterForClass: customer with: #email with: #email: with: 'herby@wichtig.de'. 
	UsTestUtil testGetterSetterForClass: customer with: #password with: #password: with: 'myadmin'. 
	UsTestUtil testGetterSetterForClass: customer with: #company with: #company: with: 'Comp Gmbh'. 