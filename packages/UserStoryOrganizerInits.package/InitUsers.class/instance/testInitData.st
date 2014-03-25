as yet unclassified
testInitData
	| developer customer administrator anIteration aStory |
	UsUserModel reset.
	UsIterationModel reset.
	UsUserStoryModel reset.
	
	administrator := UsUserModel new.
	administrator
		isAdministrator: true;
		lastName: 'Horst Herbert';
		email: 'Herbert@admins.de';
		password: (UsUserModel hashPassword: 'o').
	UsUserModel save: administrator.
		
	customer := UsUserModel new.
	customer
		lastName: 'Marianne Punkt';
		isCustomer: true;
		email: 'punkt@web.de';
		password: (UsUserModel hashPassword: 'o').
	UsUserModel save: customer.
		
	developer := UsUserModel new.
	developer
		isDeveloper: true;
		lastName: 'Marcel Wichtig';
		email: 'wichtigermarcel@t-online.de';
		password: (UsUserModel hashPassword: 'o').
	UsUserModel save: developer.

	anIteration := UsIterationModel new.
	UsIterationModel save: anIteration.
	anIteration
		title: 'Iteration 1';
		text: ''.
	
	aStory := UsUserStoryModel new.
	aStory
		points: 5;
		type: 'UserStory';
		title: 'Uebersicht ueber Userstories';
		text: 'Als Kunde und Entwickler moechte ich eine Uebersicht aller User Stories angezeigt bekommen, um einen schnellen Ueberblick ueber den Projektstatus zu bekommen.

Unterschieden wird zwischen: unbearbeitet, bearbeitet und fertiggestellt.';
		author: customer;
		updateLastChanged;
		iteration: anIteration;
		assignedTo: developer.
	UsUserStoryModel save: aStory.
	
	aStory := UsUserStoryModel new.
	aStory
		points: 8;
		type: 'UserStory';
		title: 'Burndownchart erstellen';
		text: 'Als Kunde und Entwickler möchte ich pro Iterationsseite ein Burndownchart angezeigt bekommen.';
		author: customer;
		updateLastChanged;
		iteration: anIteration;
		priority: #p4;
		status: #completed;
		endDate: DateAndTime tomorrow;
		assignedTo: developer.
	UsUserStoryModel save: aStory.
	
	aStory := UsUserStoryModel new.
	aStory
		points: 3;
		type: 'UserStory';
		title: 'Rollenvergabe durch Administrator an Nutzer';
		priority: #p3;
		updateLastChanged;
		text: 'Als Administrator möchte ich allen Nutzern des Systems verschiedene Rollen zuweisen können: Administrator, Entwickler, Auftraggeber.';
		author: customer.
	UsUserStoryModel save: aStory.