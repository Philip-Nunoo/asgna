Router.configure
	layoutTemplate: 'MasterLayout',
	loadingTemplate: 'Loading',
	notFoundTemplate: 'NotFound'


Router.map ->
	@route 'home',
		path: '/'
		name: 'home'
		controller: 'HomeController'
		action: ->
		    @render 'homeNavigation', to: 'topNavigation'
		    @render 'Home'
		where: 'client'

	@route 'signUp',
		path: '/signup'
		name: 'signUp'
		controller: 'HomeController'
		action: ->
		    @render 'userNavigationTwo', to: 'topNavigation'
		    @render 'footerOne', to: 'footer'
		    @render 'signUp'
		where: 'client'