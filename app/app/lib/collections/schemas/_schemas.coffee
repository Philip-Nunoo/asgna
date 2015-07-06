@Schemas = {}

Schemas.AssistantProfileSchema = new SimpleSchema
	overview: 
		type: String
		optional: false
		autoform:
			rows: 4
		label: -> "Overview"
	
	educationalBackground:
		type: [Object]
		optional: true
		label: -> 'Add institution'

	"educationalBackground.$.name":
		type: String
		label: -> "Name of Institution"

	"educationalBackground.$.certificate":
		type: String
		label: -> "Certificate Attained"

	"educationalBackground.$.yearAwarded":
		type: String
		label: -> "Year of completion"

	otherCertifications:
		type: [Object]
		optional: true
		label: -> 'Add Certificate'

	"otherCertifications.$.name":
		type: String
		optional: false
		label: -> "Name of certification"

	"otherCertifications.$.year":
		type: String
		optional: false
		label: -> "Year awarded"

	"otherCertifications.$.description":
		type: String
		optional: false
		label: -> "Description"
		autoform:
			rows: 4

	workExperience:
		type: [Object]
		optional: true

	"workExperience.$.place":
		type: String
		optional: true

	"workExperience.$.year":
		type: String
		optional: true

	"workExperience.$.role":
		type: String
		optional: true		
		autoform:
			rows: 4

	