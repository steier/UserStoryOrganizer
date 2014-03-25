tests
testComments

| story newComment newComment2 newTimeComment |
	story := UsUserStoryModel new.
	newComment := UsCommentModel new.
	newComment2 := UsCommentModel new.
	newTimeComment := UsTimeCommentModel new.
	
	UsTestUtil testGetterSetterForClass: newComment with: #text with: #text: with: 'Ich mag diesen Kommentar. Und Pudding.'. 
	UsTestUtil testGetterSetterForClass: newComment with: #author with: #author: with: 'Ich'. 
	UsTestUtil testGetterSetterForClass: newComment with: #timestamp with: #timestamp: with: '29.04.2013'.
	
	UsTestUtil testGetterSetterForClass: newTimeComment with: #text with: #text: with: 'Test Time'. 
	UsTestUtil testGetterSetterForClass: newTimeComment with: #author with: #author: with: 'horst'. 
	UsTestUtil testGetterSetterForClass: newTimeComment with: #timestamp with: #timestamp: with: '12.05.12'.

	
	UsTestUtil testGetterSetterForClass: story with: #id with: #id: with: 1.
	UsTestUtil testGetterSetterForClass: story with: #author with: #author: with: 'Peter'.
	UsTestUtil testGetterSetterForClass: story with: #category with: #category: with: #a.
	UsTestUtil testGetterSetterForClass: story with: #type with: #type: with: #userStory.
	UsTestUtil testGetterSetterForClass: story with: #status with: #status: with: #new.
	UsTestUtil testGetterSetterForClass: story with: #priority with: #priority: with: #p5.
	UsTestUtil testGetterSetterForClass: story with: #date with: #date: with: '29.03.13'.
	UsTestUtil testGetterSetterForClass: story with: #endDate with: #endDate: with: '30.04.13'.
	UsTestUtil testGetterSetterForClass: story with: #estimatedTime with: #estimatedTime: with: 2.
	UsTestUtil testGetterSetterForClass: story with: #realTime with: #realTime: with: 3.
	UsTestUtil testGetterSetterForClass: story with: #title with: #title: with: 'Ein schöner Titel'.
	UsTestUtil testGetterSetterForClass: story with: #text with: #text: with: 'der Text ist schön =)'.
	UsTestUtil testGetterSetterForClass: story with: #assignedTo with: #assignedTo: with: 'Peter'.
	UsTestUtil testGetterSetterForClass: story with: #lastChanged with: #lastChanged: with: 12315123.
	
	UsTestUtil testGetterSetterForClass: story with: #comment with: #comment: with: story comment.
	UsTestUtil testGetterSetterForClass: story with: #timeComment with: #timeComment: with: story timeComment.
	
	story updateLastChanged.
	
	story
		addComment: newComment;
		addComment: newComment2;
		removeComment: newComment.
		
		self assert: [story comment size = 1].
		
	^story.