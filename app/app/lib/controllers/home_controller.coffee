@HomeController = RouteController.extend
	layoutTemplate: 'MasterLayout'
	# onBeforeAction: ->
		# if Meteor.user()
		# 	Router.go 'dashboard'
		# @next
		# unless Meteor.user()
		# 	@redirect 'home'
		# 	else
		# 	if Meteor.user().isAdmin() or Meteor.user().isCustomer()
		# 	@next()
		# 	else
		# 	@redirect 'guardDashboard'

			# console.log 'user logged in'
		# @next
	subscriptions: ->
		return