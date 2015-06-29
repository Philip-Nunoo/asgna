Router.configure
	layoutTemplate: 'MasterLayout'
	loadingTemplate: 'Loading'
	notFoundTemplate: 'NotFound'


Router.map ->
	@route 'home',
		path: '/'
		name: 'home'
		controller: 'HomeController'
		action: ->
		    # @render 'homeNavigation', to: 'topNavigation'
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

	@route 'createUser',
		path: '/signup/create-user'
		name: 'createUser'
		controller: 'HomeController'
		action: ->
		    @render 'userNavigationTwo', to: 'topNavigation'
		    @render 'footerOne', to: 'footer'
		    @render 'userSignUp'
		where: 'client'

	@route 'createAssistant',
		path: '/signup/create-user-assist'
		name: 'createAssistant'
		controller: 'HomeController'
		action: ->
			@render 'userNavigationTwo', to: 'topNavigation'
			@render 'footerOne', to: 'footer'
			@render 'assitantSignUp'
		where: 'client'

	@route 'dashboard',
		path: '/dashboard'
		name: 'dashboard'
		action: ->
			if Meteor.userId()
				if Meteor.user().isUser() 
					console.log 'userpage'
					# Router.go 'userPage'
				else if Meteor.user().isProvider()
					console.log 'providerPage'
					# Router.go 'providerPage'
				else
					console.log 'home'
					# Router.go 'home'
			else
				Router.go 'signUp'
		where: 'client'