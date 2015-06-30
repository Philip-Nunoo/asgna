@Config = 
	appName: 'asgnas'

Handlebars.registerHelper "debug", (optionalValue)->
	console.log optionalValue

Handlebars.registerHelper "User", ->
	Meteor.user()