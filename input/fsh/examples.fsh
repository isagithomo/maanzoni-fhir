Instance: KenyaPatientExample
InstanceOf: KenyaPatient
Usage: #example
Title: "Kenya Patient Example"
Description: "Kenya Patient Example"
* identifier[NID].value = "0012016867"
* identifier[NID].system = "http://jembi.org/fhir/ImplementationGuide/maanzoni-fhir-issac/identifier/nid"
* identifier[MRN].value = "MRN00292001"
* identifier[MRN].system = "http://jembi.org/fhir/ImplementationGuide/maanzoni-fhir-issac/identifier/nid"
* telecom[+].system = #phone
* telecom[=].value = "0800900900"
* telecom[+].system = #email
* telecom[=].value = "issac@edarp.org"
* name[+].family = "Unknown"
* name[=].given[+] = "Jane"
* name[=].given[+] = "Doe"
* name[=].given[+] = "Elder"
* gender = #male
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #M
* maritalStatus.coding.display = "Married"
* maritalStatus.text = "Married"
* birthDate = "1999-01-01"
* address.city = "Nairobi"
* address.line[+] = "Tom mboya"
* address.district = "Westlands"
* address.state = "Nairobi"
* address.country = "KEN"
* extension[KPS].valueCodeableConcept.coding.code = #472986005
* extension[KPS].valueCodeableConcept.coding.system = #SCT
