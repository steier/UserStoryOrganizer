userStoreMethodes
findUserByEmail: anEmail
	| index |
	index := self all findFirst: [:aUser | aUser email = anEmail].
	(index = 0) ifFalse: [^self all at: index].
	^nil.