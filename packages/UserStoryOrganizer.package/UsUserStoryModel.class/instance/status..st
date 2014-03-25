accessing
status: anObject
	(#completed = anObject) ifTrue: [
		( #completed = self status ) ifFalse: [
			self endDate: DateAndTime now.
			].
		].
	status := anObject.