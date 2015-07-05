Router.map ->
	@route 'userDashboard',
		path: '/user'
		name: 'userDashboard'
		where: 'client'
		# controller: 'HomeController'
		action: ->
			if Meteor.user()?.isUser()? 
				@render 'dashboardNavigation', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'userDashboard'
			else
		    	Router.go 'loginUser'

	# Requests
	@route 'newRequest',
		path: '/requests/new'
		name: 'newRequest'
		where: 'client'
		data: ->
			return
		action: ->
			if Meteor.user()?.isUser()?
				@render 'dashboardNavigation', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'newRequest'
			else
				Router.go 'loginUser'

# Settings
Router.map ->
	@route 'userSettings',
		path: '/userSettings/account'
		name: 'userSettings'
		where: 'client'
		# yieldRegions:
		data: ->
			user: Meteor.user()
		action: ->
			if Meteor.user()?
				@render 'dashboardNavigation', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'accountSettings', {to: 'settings_side'}
				@render 'userSettings'
			else
		    	Router.go 'loginUser'
