storeMethodes
get: id
	| collection |
	collection := (self all select: [:item | item id = id]).
	(collection isEmpty) ifTrue: [^nil].
	^ collection at: 1.