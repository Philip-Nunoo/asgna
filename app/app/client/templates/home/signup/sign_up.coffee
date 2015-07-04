# Template.appAtPwdForm.replaces "atPwdForm"
# Template.appAtGroupFields.inheritsHelpersFrom 'atPwdForm'
Template.appAtGroupFields.helpers
	collectFields: (field) ->
	    instance = Template.instance()
	    current_row = instance.current_row
	    if field.options and field.options.startRow
	     	instance.current_row = [ field ]
	    else if field.options and field.options.endRow
	      	delete instance.current_row
	      	current_row.push field
	      	return current_row
	    else if current_row
	      	current_row.push field
	    else
	      	return field
	    return
  	numberToWord: (number) ->
    	number_words[number]
  	isArray: _.isArray

number_words = [
  'zero'
  'one'
  'two'
  'three'
  'four'
  'five'
  'six'
  'seven'
  'eight'
  'nine'
  'ten'
  'eleven'
  'twelve'
  'thirteen'
  'fourteen'
  'fifteen'
  'sixteen'
]

Template.assitantSignUp.rendered =  ->
  Meteor.setTimeout ->
    $('#at-field-assistant').val 'assistant'
  , 100