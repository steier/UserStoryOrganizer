test
createHtmlMock
	| mock |
	mock := Mock new.
	(mock stub: #table:) with: [:aBlock | aBlock value. true.].
	(mock stub: #with:) with: [:aBlock | aBlock value. true.].
	(mock stub: #table) returns: [mock proxy].
	(mock stub: #anchor) returns: [mock proxy].
	(mock stub: #class:).
	(mock stub: #tableRow:) with: [:aBlock | aBlock value. true.].
	(mock stub: #tableData:) with: [:aBlock | aBlock value. true.].
	(mock stub: #form:) with: [:aBlock | aBlock value. true.].
	(mock stub: #render:).
	(mock stub: #strong:).
	(mock stub: #heading:).
	(mock stub: #form).
	(mock stub: #submitButton).
	(mock stub: #callback:).
	(mock stub: #value:).
	^mock.