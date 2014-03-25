id
nextId 
	| nextId |
	nextId := self lastId + 1.
	self lastId: nextId.
	^nextId.