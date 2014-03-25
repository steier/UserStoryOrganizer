storeMethodes
withTestDatabase: aBlock
	self backup.
	aBlock value.
	self restore.