// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"


Extension: DeviceAlertingDectection
Title: "Device Alerting Detection Extension"
Description: "TBD"
Context: DeviceAlert, Device
* obeys alrtdet-1
* extension contains
    allAlerts ..1 and
    alertCode ..1 and
    activationState 1..1 and
    priority ..1 and
    limitRange ..1
* extension[allAlerts]
  * ^short = "The alert detection activation state for the overall device is described"
  * ^definition = "Indicates that the parent Device Alerting Detection extension describes the alert detection activation state for the device."
  * value[x] 1..
  * value[x] only boolean
  * valueBoolean = true
* extension[alertCode]
  * ^short = "The alert detection activation state for the specified alert is described"
  * ^definition = "Indicates that the parent Device Alerting Detection extension describes the alert detection activation state for the specifed alert."
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept from http://hl7.org/fhir/ValueSet/devicealert-condition (preferred)
* extension[activationState]
  * value[x] 1..
  * value[x] only code
  * valueCode from http://hl7.org/fhir/ValueSet/devicealert-activationState (required)
* extension[priority] 0..1
  * value[x] ..1
  * value[x] only code
  * valueCode from http://hl7.org/fhir/ValueSet/devicealert-priority (required)
* extension[limitRange] 0..1
  * value[x] ..1
  * value[x] only Range

Invariant: alrtdet-1
Description: "Exactly one of subextension `allAlerts` or `alertCode` SHALL be present; subextension `allAlerts` is only permitted on Device resource."
Severity: #error
Expression: "(extension('allAlerts').exists() implies (%resource is Device)) and (extension('allAlerts').exists() xor extension('alertCode').exists())"
