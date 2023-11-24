CodeSystem: FirstCodeSystem
Id: FirstCodeSystem
Title: "FirstCodeSystem"
Description: "TODO"
* ^experimental = false
* ^caseSensitive = false
* #a
* #b
* #c

CodeSystem: SecondCodeSystem
Id: SecondCodeSystem
Title: "SecondCodeSystem"
Description: "TODO"
* ^experimental = false
* ^caseSensitive = false
* #m
* #n
* #p

ValueSet: FirstValueSet
Id: FirstValueSet
Title: "FirstValueSet"
Description: "TODO"
* ^experimental = false
* codes from system FirstCodeSystem

ValueSet: SecondValueSet
Id: SecondValueSet
Title: "SecondValueSet"
Description: "TODO"
* ^experimental = false
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
