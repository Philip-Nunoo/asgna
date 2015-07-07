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
			if !Meteor.userId()?
				@render 'Home'
			else
				Router.go 'dashboard'
		where: 'client'

	@route 'signUp',
		path: '/signup'
		name: 'signUp'
		controller: 'HomeController'
		action: ->
			if !Meteor.userId()?
			    @render 'userNavigationTwo', to: 'topNavigation'
			    @render 'footerOne', to: 'footer'
			    @render 'signUp'
			else
				Router.go 'dashboard'
		where: 'client'

	@route 'createUser',
		path: '/signup/create-user'
		name: 'createUser'
		controller: 'HomeController'
		action: ->
			if !Meteor.userId()?
			    @render 'userNavigationTwo', to: 'topNavigation'
			    @render 'footerOne', to: 'footer'
			    @render 'userSignUp'
			else
				Router.go 'dashboard'
		where: 'client'

	@route 'createAssistant',
		path: '/signup/create-user-assist'
		name: 'createAssistant'
		controller: 'HomeController'
		action: ->
			if !Meteor.userId()?
				@render 'userNavigationTwo', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'assitantSignUp'
			else
				Router.go 'dashboard'
		where: 'client'

	@route 'loginUser',
		path: '/login'
		name: 'loginUser'
		controller: 'HomeController'
		action: ->
			if !Meteor.userId()?
				@render 'userNavigationTwo', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'userSignIn'
			else
				Router.go 'dashboard'

	@route 'dashboard',
		path: '/dashboard'
		name: 'dashboard'
		action: ->
			if Meteor.user()?
				if Meteor.user().isUser() 
					Router.go 'userDashboard'
				else if Meteor.user().isProvider()
					Router.go 'assistantDashboard'
				else
					Router.go 'signUp'
			else
				Router.go 'signUp'
		where: 'client'

	@route 'sign-out',
		path: '/signout'
		name: 'signout'
		action: ->
			Meteor.logout ->
				Router.go 'loginUser'
			@next()