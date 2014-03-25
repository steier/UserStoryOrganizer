storeMethodes
restore
	self backupStore ifNil: [self error: 'nothing to restore'. ^nil.].
	self store: self backupStore.
	self backupStore: nil.