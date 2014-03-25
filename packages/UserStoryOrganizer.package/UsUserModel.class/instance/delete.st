destruction
delete
	self 
		company: nil;
		email: nil;
		isAdministrator: false;
		isCustomer: false;
		isDeveloper: false;
		userName: 'deleted user';
		password: nil.
	UsUserModel remove: self.