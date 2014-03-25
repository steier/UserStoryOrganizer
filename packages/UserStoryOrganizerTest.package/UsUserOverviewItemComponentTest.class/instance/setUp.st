running
setUp 
	self rootComponent: (Mock newForClass: UsLoggedInComponent).
	self user: (Mock newForClass: UsUserModel).
	self item: (UsUserOverviewItemComponent for: self user and: self rootComponent).