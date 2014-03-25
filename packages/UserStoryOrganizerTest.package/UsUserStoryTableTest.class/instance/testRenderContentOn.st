tests
testRenderContentOn
	| sut |
	
	sut := UsUserStoryTable new.
	self someUserStoryModels do: [:item |
		(self tableItemFactory expect: #for:and:) withArgs: {item. nil}.
	].
	
	sut usUserStoryTableItemFactory: self tableItemFactory proxy.
	sut usUserStoryModelProvider: self userStoryModelProvider proxy.
	
	sut renderContentOn: self htmlCanvas proxy.
	
	self tableItemFactory verify.