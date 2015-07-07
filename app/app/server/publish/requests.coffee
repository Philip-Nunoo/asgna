Meteor.publish 'requests', ->
	if @userId
		Requests.find()
	else
		@ready()

Meteor.publish 'usersRequests', ->
	if @userId
		u = Meteor.users.findOne @userId
		if u.isUser()
			Requests.find {owner: u._id}
		else
			@ready()
	else
		@ready()