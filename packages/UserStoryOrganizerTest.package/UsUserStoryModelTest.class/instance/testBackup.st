tests
testBackup
	| original |
	original := UsUserStoryModel all.
	UsUserStoryModel backup.
	self assert: [original == UsUserStoryModel backupStore].
	self assert: [(original == UsUserStoryModel all) not].
	UsUserStoryModel restore.
	self assert: [UsUserStoryModel all == original]