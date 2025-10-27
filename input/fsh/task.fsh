
Alias: $extObligation = http://hl7.org/fhir/StructureDefinition/obligation


Profile: ScreenerTask
Parent: Task
Title: "Screener Task"
Description: """
  Screener Task resource representing an activity done as part of fulfilling an Order/Referral request.
  """
* basedOn 1..
* code 1..
* executionPeriod
  * ^extension[$extObligation][+].extension[name].valueString = "tsk-1"
  * ^extension[$extObligation][=].extension[code].valueCode = #SHOULD:populate-if-known
  // * ^extension[$extObligation][=].extension[actor].valueCanonical = "http://localhost/ignore"
  * ^extension[$extObligation][=].extension[documentation].valueMarkdown = "The `executionPeriod` element should be populated by senders if known."
* lastModified 1..
* input
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "type"
  * ^slicing.rules = #open
  * ^slicing.description = "Input parameters for the Task"
* input contains
    prerequisite 0..*
* input[prerequisite]
  * value[x] only Reference
  * valueReference only Reference(ScreenerTask)


