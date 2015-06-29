Template.userSettings.events
	'click .edit-basic-form': ->
		Session.set "basicProfileEdit", !Session.get "basicProfileEdit"