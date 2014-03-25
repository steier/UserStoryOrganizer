calculate
finishedStoriesSortedByEndDate
	| sorted filtered |
	filtered := self stories select: [ :story | 
		story endDate 
			ifNil: [false] 
			ifNotNil: [true].
		].
	sorted := filtered sort: [ :first :second |
		first endDate < second endDate.
		].
	^sorted.