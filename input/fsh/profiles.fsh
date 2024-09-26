Profile: KenyaPatient
Parent: PatientUvIps
Id: kenya-patient
Title: "Kenya-Patient"
Description: "Kenya Patient"
* maritalStatus 1..1
* gender 1..1
* telecom 0..* MS
* name 1..*
* name.family 1..1
* name.given 1..*
* birthDate 1..1
* address 0..*
* address.city 1..1
* address.line 1..1
* address.district 1..1
* address.state 1..1
* address.country 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slice based on the type of identifier"
* identifier ^slicing.ordered = false
* identifier contains
     MRN 1..1 and
     NID 0..1 MS
* identifier[NID].value 1..1
* identifier[NID].system = "http://jembi.org/fhir/ImplementationGuide/maanzoni-fhir-issac/identifier/nid"
* identifier[MRN].value 1..1
* identifier[MRN].system = "http://jembi.org/fhir/ImplementationGuide/maanzoni-fhir-issac/identifier/nid"
* extension contains KeyPopulationStatusExtension named KPS 1..1

Extension: KeyPopulationStatusExtension
Id: key-population-status-extension
Title: "Key Population Status Extension"
Description: "Key Population Status Extension"
// Context: 
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from KeyPopulationStatusValueSet (required)