// TODO: To be sync'd with MDI IG Practitioner handling when possible.
Profile: AssignedPathologist
Parent: Practitioner
Id: assigned-pathologist
Title: "Practitioner - Assigned Pathologist"
Description: "The pathologist assigned to the case. This should typically be the primary responsible individual. Depending on jurisdiction, may fall under a number of titles such as attending or faculty pathologist. This may be considered distinct from the performer of the autopsy as needed based on local jurisdictional workflows."
* identifier 1.. MS
* name 1.. MS
* telecom 1.. MS
* address MS
* qualification MS
// TODO: Need to provide an extension or use PractitionerRole that allows for an extended
// documentation of the individual's role, if they performed the autopsy, etc.