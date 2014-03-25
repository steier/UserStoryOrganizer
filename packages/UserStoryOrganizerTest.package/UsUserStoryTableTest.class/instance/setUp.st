running
setUp
	| mock collection |
	mock := Mock new.
	collection := OrderedCollection new.
	collection add: UsUserStoryModel new.
	collection add: UsUserStoryModel new.
	collection add: UsUserStoryModel new.
	self someUserStoryModels: collection.
	(mock stub: #all)
		returns: collection.
	self userStoryModelProvider: mock.
	mock := Mock newForClass: UsUserStoryTableItem.
	self userStoryTableItem: mock.
	mock := Mock new.
	self tableItemFactory: mock.
	self htmlCanvas: UsTestUtil createHtmlMock.