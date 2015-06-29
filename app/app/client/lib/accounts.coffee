AccountsTemplates.addFields [
	_id: "firstName"
	type: "text"
	required: true
	displayName: 'First Name'
	placeholder: 'First Name'
	errStr: 'Please enter your first name'

	options:
		dividerBefore: true
,
	_id: "lastName"
	type: "text"
	required: true
	displayName: 'Last Name'
	placeholder: 'Last Name'
	errStr: 'Please enter your last name'

	options:
		dividerBefore: true

]

AccountsTemplates.configure
	confirmPassword: true
	enablePasswordChange: true
	forbidClientAccountCreation: false
	overrideLoginErrors: true
	sendVerificationEmail: false
	lowercaseUsername: false
	showAddRemoveServices: false
	showForgotPasswordLink: false
	showLabels: true
	showPlaceholders: true
	showResendVerificationEmailLink: false
	continuousValidation: false
	negativeFeedback: false
	negativeValidation: true
	positiveValidation: true
	positiveFeedback: true
	showValidating: true
	privacyUrl: 'privacy'
	termsUrl: 'terms-of-use'
	homeRoutePath: '/'
	redirectTimeout: 4000
	onLogoutHook: ->
	onSubmitHook: ->
	preSignUpHook: ->
	texts:
		button: signUp: 'Register Now!'
		socialSignUp: 'Register'
		socialIcons: 'meteor-developer': 'fa fa-rocket'
		title: forgotPwd: 'Recover Your Password'