test
testGetterSetterForClass: anObject with: aGetterSymbol with: aSetterSymbol with: aValue
	anObject perform: aSetterSymbol with: aValue.
	self assert: [(anObject perform: aGetterSymbol) = aValue].