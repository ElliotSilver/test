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


Extension: QuantityAccuracy
Title: "Quantity Accuracy"
Context: Quantity, DeviceMetric
Description: """
  The absolute of the maximum deviation of the actual value from the reported value.

  Accuracy is particularly applicable for measured or observed values, and represents the maximum deviation over the entire range of measurement. When applied to a [[[DeviceMetric]]], it expresses the absolute maximum deviation of values reported by the metric. The reported observed value should be precise enough to reflect this accuracy, for example an observed value of 3.2 kg with an accuracy of 0.04 kg would be nonsensical. On the other hand, an observed a value of 3.02 kg with an accuracy of 0.04 kg would indicate that the actual value is in the range of 3.02&plusmn;0.04 kg or [2.98, 3.06] kg.

  Accuracy is usually in the same units as the reported value. Accuracy quantity units **SHOULD** be provided for clarity; if omitted, they are implied to be the same as the reported value's units (or the [[[DeviceMetric]]] units).
"""
* . 0..1
* value[x] only Quantity
* valueQuantity 1..
  * ^short = "Absolute maximum deviation of the reported value from the actual value"
  * value 1..


Extension: QuantityConfidenceInterval
Title: "Quantity Confidence Interval"
Context: Quantity
Description: """
  The range within which, at the given level of confidence, that the actual value resides. For example, a nominal value (from the context `Quantity.value`) of 4.3 may be reported, but this extension may be used to indicate that the reporting device is only 95% confident that the actual value is in the range of 3.1 to 5.5.

  The reported value, if present, should be precise enough to reflect the confidence interval. For example, a nominal quantity of 3.2 kg with a confidence interval of [3.21, 3.27] kg would be nonsensical. On the other hand, a reported value of 3.24 kg with a 95% confidence interval of [3.21, 3.27] kg would indicate a 95% confidence that the actual value is in that range.

  A reported value need not be at the center of the confidence interval. The context `Quantity.value` **SHOULD** be present if this extension is used, due to the risk that systems unfamiliar with, or ignoring, this extension may be unable to process a value-less quantity.

  The interval range low and high units are usually the same as the reported value's units. Confidence interval range low and high units **SHOULD** be provided for clarity; if omitted, they are implied to be the same as the reported value's units.
"""
* . 0..1
* extension contains
    confidence 1..1 and
    interval 1..1
* extension[confidence]
  * ^short = "The degree of confidence that the actual value is within the interval, as a percent (0..100)"
  * value[x] only decimal
  * valueDecimal 1..
* extension[interval]
  * ^short = "The range within which the actual value is expected to reside"
  * value[x] only Range
  * valueRange
    * low 1..
      * ^short = "The lower bound of the confidence interval"
    * high 1..
      * ^short = "The upper bound of the confidence interval"


// Invariant: Observation-quantityAccuracy-Context
// Description: "The units, if present, of the accuracy must match the units of context"
// Severity: #error
// Expression: """
//   context is Quantity implies (
//     %extension.valueQuantity.system.exists() implies (this.system.exists() and %extension.valueQuantity.system = this.system) and
//     %extension.valueQuantity.code.exists() implies (this.code.exists() and %extension.valueQuantity.code = this.code) and
//     %extension.valueQuantity.unit.exists() implies (this.unit.exists() and %extension.valueQuantity.unit = this.unit)) and
//   context is DeviceMetric implies (
//   )
// """
