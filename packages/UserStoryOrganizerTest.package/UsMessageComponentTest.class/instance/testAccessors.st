tests
testAccessors
	|messageComponent|
	messageComponent := UsMessageComponent new.
	
	UsTestUtil testGetterSetterForClass: messageComponent 
		with: #messageString 
		with: #messageString: 
		with: 'a new message string'.
	UsTestUtil testGetterSetterForClass: messageComponent 
		with:  #messageType 
		with: #messageType: with: 'info'.
	UsTestUtil testGetterSetterForClass: messageComponent 
		with: #wasShown 
		with: #wasShown: with: false.