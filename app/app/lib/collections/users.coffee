Schemas.UserProfile = new SimpleSchema
	picture:
    	type: String
    	optional:true
    	label: -> 'Profile picture'
    	autoform:
      		afFieldInput:
        		type: 'fileUpload'
        		collection: 'ProfilePictures'

  	firstName:
    	type: String
    	optional: true
    	label: -> 'First Name'

  	lastName:
    	type: String
    	optional: true
    	label: -> 'Last Name'

  	birthday:
    	type: Date
    	optional: true
    	label: -> 'Birth date'

  	country:
    	type: String
    	optional: true
    	label: -> 'Country'
    	# autoform: 
     #  		options: ->        
     #    		obj = {label: country, value: country} for country in Utils.countryList

  	zipCode:
    	type: String
    	optional: true
    	label: -> 'zipCode'

  	city:
    	type: String
    	optional: true
    	label: -> 'city'

Schemas.UserSettings = new SimpleSchema
	smsNotifications:
    	label: -> 'userSettingsSMS'
    	type: Boolean
    	optional: true
    	autoValue: ->
    		if @isInsert
        		false

Schemas.User = new SimpleSchema
	emails:
    	type: [Object]
    	optional: true

  "emails.$.address":
    	type: String
    	regEx: SimpleSchema.RegEx.Email
    	label: -> 'email'

 	"emails.$.verified":
    	type: Boolean
    	label: -> 'userEmailVerified'

  	createdAt:
    	type: Date

  	profile:
    	type: Schemas.UserProfile
    	defaultValue: {}

  	services:
    	type: Object
    	optional: true
    	blackbox: true

  	roles:
    	type: [String]
    	blackbox: true
    	optional: true

  	settings:
    	type: Schemas.UserSettings

Meteor.users.attachSchema Schemas.User

Meteor.users.helpers
  fullName: ->
    "#{@profile.firstName} #{@profile.lastName}"

  primaryEmail: ->
    @emails[0].address
    
  isUser: ->
    @roles.indexOf('customer') == 0

  isProvider: ->
    @roles.indexOf('assistant') == 0