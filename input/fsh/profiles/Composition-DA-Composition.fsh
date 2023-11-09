// TODO: Move to aliases file.
Alias: $Extension-tracking-number = http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-tracking-number

Profile: MDIandDAComposition
Parent: Composition
Id: mdi-and-da-composition
Title: "Composition - MDI and DA"
Description: "Composition profile representing data being exchanged between an MDI CMS and a District Attorney's office."
// TODO: Provide documentation on tracking number to include both Circuit Case Numer and MDI Tracking Number to align between systems.
* extension contains $Extension-tracking-number named extension-tracking-numbers 0..* MS
* extension[extension-tracking-numbers] ^short = "A tracking number (e.g., case number or file number) assigned by an MDI or other organization to facilitate recognition of common case records across disparate systems"
* extension[extension-tracking-numbers] ^definition = "A tracking number (e.g., case number or file number) assigned by an MDI or other organization to facilitate recognition of common case records across disparate systems"

// TODO: Add identifier w/ required assigner pointing to the PoliceAgency organization for Police Agency Case Number