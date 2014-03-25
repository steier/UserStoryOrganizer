storeMethodes
save: anObject
	anObject id ifNil: [anObject id: self nextId].
	self store add: anObject