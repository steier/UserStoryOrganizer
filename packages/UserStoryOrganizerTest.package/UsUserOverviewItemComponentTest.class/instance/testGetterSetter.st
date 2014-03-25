tests
testGetterSetter
	UsTestUtil testGetterSetterForClass: self sut 
		with: #rootComponent 
		with: #rootComponent: 
		with: self rootComponent proxy.
	UsTestUtil testGetterSetterForClass: self sut 
		with: #userModel 
		with: #userModel: 
		with: self user proxy.	