accessing
endDate
	endDate ifNil: [
		endDate := DateAndTime now.
		].
	^ endDate.