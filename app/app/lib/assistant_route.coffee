Router.map ->
	@route 'userDashboard',
		path: '/user'
		name: 'userDashboard'
		# controller: 'HomeController'
		action: ->
			if Meteor.user()?.isUser()? 
				@render 'dashboardNavigation', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'userDashboard'
			else
		    # @render 'homeNavigation', to: 'topNavigation'
		    	@render 'loginUser'
		where: 'client'

	@route 'userSettings',
		path: '/userSettings/profile'
		name: 'userSettings'
		data: ->
			user: Meteor.user()
		action: ->
			if Meteor.user()?
				@render 'dashboardNavigation', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'userSettings'
			else
		    # @render 'homeNavigation', to: 'topNavigation'
		    	@render 'loginUser'
		where: 'client'