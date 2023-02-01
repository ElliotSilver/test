Profile: ProvenanceIgHistory
Parent: Provenance
Id: ProvenanceIgHistory
Title: "Provenance for IG History entries"
Description: "TODO"
* id 1..
  * ^short = "Unique Id of the history entry"
* target
  * ^short = "A reference to each of the changed resources"
* occurred[x] only dateTime
* occurredDateTime 1..
  * ^short = "When the change was made"
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#METAMGT
  * text 1..
    * ^short = "Description of the change"
* activity 1..
* activity from ValueSetIGHistoryActivity (extensible)
* agent 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
  * ^slicing.description = "Participants in the change"
  * ^slicing.ordered = false
* agent contains
    author 1..
* agent[author]
  * ^short = "Author of the change"
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
  * who 1..
    * display 1..

