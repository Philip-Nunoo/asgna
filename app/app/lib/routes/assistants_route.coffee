Router.map ->
	@route 'assistantDashboard',
		path: '/assist'
		name: 'assistantDashboard'
		where: 'client'
		# controller: 'HomeController'
		waitOn: ->
			Meteor.subscribe 'requests'
		action: ->
			if Meteor.user()?.isUser()? 
				@render 'dashboardNavigation', to: 'topNavigation'
				@render 'footerOne', to: 'footer'
				@render 'assistantDashboard'
			else
		    	Router.go 'loginUser'
		data: ->
			jobs: Requests.find().fetch()