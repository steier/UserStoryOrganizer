storeMethodes
backup
	self backupStore ifNotNil: [self error: 'backup store is not nill. Did you try to backup twice?'. ^nil.].
	self backupStore: self store.
	self store: nil.