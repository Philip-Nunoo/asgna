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
