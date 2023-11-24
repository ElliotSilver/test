CodeSystem: FirstCodeSystem
Id: FirstCodeSystem
Title: "FirstCodeSystem"
Description: "TODO"
* #a
* #b
* #c

CodeSystem: SecondCodeSystem
Id: SecondCodeSystem
Title: "SecondCodeSystem"
Description: "TODO"
* #m
* #n
* #p

ValueSet: FirstValueSet
Id: FirstValueSet
Title: "FirstValueSet"
Description: "TODO"
* codes from system FirstCodeSystem

ValueSet: SecondValueSet
Id: SecondValueSet
Title: "SecondValueSet"
Description: "TODO"
* codes from system FirstCodeSystem
* codes from system SecondCodeSystem

Extension: BaseExtension
Id: BaseExtension
Title: "BaseExtension"
Description: "TODO"
Context: Patient
* value[x] only CodeableConcept
* valueCodeableConcept 1..
* valueCodeableConcept from FirstValueSet (extensible)

Profile: ReprofiledExtension
Parent: BaseExtension
Id: ReprofiledExtension
Title: "ReprofiledExtension"
Description: "TODO"
* valueCodeableConcept from SecondValueSet (required)
