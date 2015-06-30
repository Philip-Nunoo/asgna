@Requests = new Meteor.Collection 'requests'

Schemas.Requests = new SimpleSchema
	title:
		label: 'Request Title'
		type: String

	description:
		label: 'Description'
		type: String

	deliveryTime:
		label: 'Date to be delivered'
		type: Date

	createdAt:
		type: Date
		autoValue: ->
			if @isInsert
				new Date()

	updatedAt:
		type: Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			type: "select2"
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id


Requests.helpers
	getOwner: ->
		Meteor.users.findOne @owner

Requests.attachSchema Schemas.Requests