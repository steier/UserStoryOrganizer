running
setUp 
	| admin customer developer |
	UsUserModel backup .
	

	admin:= UsUserModel new.
	admin isAdministrator: true.
	developer :=UsUserModel new.
	developer isDeveloper: true.
	customer := UsUserModel new.
	customer isCustomer: true.
	
	admin 
		userName: 'Horst Herbert';
		email: 'Herbert@admins.de';
		password: 'masterpasswd'.
		
	developer
		userName: 'Marianne Punkt';
		email: 'punkt@web.de';
		password: 'marianne123'.
		
	customer
		userName: 'Marcel Wichtig';
		email: 'wichtigermarcel@t-online.de';
		password: '1234hallo';
		company:'Superduper Gmbh'.
		
	self admin: admin.
	self customer: customer.
	self developer: developer.