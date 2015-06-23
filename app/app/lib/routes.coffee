Router.configure
	layoutTemplate: 'MasterLayout',
	loadingTemplate: 'Loading',
	notFoundTemplate: 'NotFound'


Router.map ->
	@route 'home',
		path: '/'
		name: 'home'
		controller: 'HomeController'
		action: 'action'
		where: 'client'

	@route 'signUp',
		path: '/signup'
		name: 'signUp'
		controller: 'HomeController'
		action: 'action'
		where: 'client'