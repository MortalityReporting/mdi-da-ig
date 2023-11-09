Profile: MDIandDADocumentBundle
Parent: Bundle
Id: mdi-and-da-document-bundle
Title: "Bundle - Document MDI and DA"
Description: "Document bundle containing the record being exchanged between an MDI CMS and a District Attorney's office."
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"
* identifier 1.. MS
* identifier ^short = "Persistent, unique identifier of each bundle instance"
* type = #document (exactly)
* type MS
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "$this.resource"
* entry ^slicing.rules = #open
* entry contains MDIandDAComposition 1..1 MS
* entry[MDIandDAComposition].resource 1.. MS
* entry[MDIandDAComposition].resource only mdi-and-da-composition
// * obeys mdi-da-bdl-1

// TODO: Once a profile cannonical is established, release this rule and update the contains part of the expression.
// Invariant: mdi-da-bdl-1
// Description: "If Bundle is of type document, the first resource in Bundle.entry SHALL be of type Composition conforming to the MDI and DA Composition Profile"
// Expression: "entry.first().resource.meta.profile.contains('http://someurl.com/etc/etc/etc')"
// Severity: #error