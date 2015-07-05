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
		label: -> 'Educational Background'

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
		type: [String]
		optional: true
		label: -> 'Other Certifications'

	workExperience:
		type: [Object]
		optional: true
		label: -> 'Work Experience'

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

	