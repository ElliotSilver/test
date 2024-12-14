// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
// * name 1..* MS
* contact
  * relationship from https://fhir.infoway-inforoute.ca/ValueSet/personalrelationshiproletype
* maritalStatus from https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1


ValueSet: MyValueSet
Description: "HL7 CA valueset"
Title: "A valueset"
* include codes from valueset https://fhir.infoway-inforoute.ca/ValueSet/personalrelationshiproletype

ValueSet: MyAUValueSet
Description: "HL7 AU valueset"
Title: "An AU valueset"
* include codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1

ValueSet: MyVaccineSet
Description: "Vaccine Valueset"
Title: "A valueset"
* include codes from valueset http://snomed.info/sct/20611000087101?fhir_vs=refset/22071000087104
