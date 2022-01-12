// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Invariant: pat-1
Description: "Invalid Invariant"
Severity: #error
Expression: "name.exists()."

Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS 
* name obeys pat-1

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"