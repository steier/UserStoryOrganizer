accessing
startDate
	startDate ifNil: [
		startDate := DateAndTime now.
		].
	^ startDate.