Schemas.UserProfile = new SimpleSchema
	picture:
    	type: String
    	optional:true
    	label: -> 'userProfilePicture'
    	autoform:
      		afFieldInput:
        		type: 'fileUpload'
        		collection: 'ProfilePictures'

  	firstName:
    	type: String
    	optional: true
    	label: -> 'userFirstName'

  	lastName:
    	type: String
    	optional: true
    	label: -> 'userLastName'

  	licenseNumber:
    	type: String
    	optional: true
    	label: -> 'userLicenseNumber'

  	companyName:
    	type: String
    	optional: true
    	label: -> 'userCompanyName'

  	birthday:
    	type: Date
    	optional: true
    	label: -> 'userBirthday'

  	country:
    	type: String
    	optional: true
    	label: -> 'country'
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

  	billingAddress:
    	type: String
    	optional: true
    	label: -> 'billingAddress'
    	autoform: 
      		rows: 3

  	vatNumber:
    	type: String
    	optional: true
    	label: -> 'vatNumber'

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
  isUser: ->
    true

  isProvider: ->
    false