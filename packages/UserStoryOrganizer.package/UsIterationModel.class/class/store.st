accessing
store
	Store ifNil: [Store := OrderedCollection new.].
	^ Store.