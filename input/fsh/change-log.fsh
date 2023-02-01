// Change log follows:
Instance: change-log
InstanceOf: Bundle
//InstanceOf: BundleIgHistory
Usage: #definition
Title: "Change Log Bundle"
Description: "TODO"
* type = #collection
* entry[+]
  * fullUrl = "urn:uuid:a36ec3cb-cb1c-46e7-8f5b-792e3ee20b9a"
  * resource = provenance-ig-monday

Instance: provenance-ig-monday
//InstanceOf: Provenance
InstanceOf: ProvenanceIgHistory
Usage: #inline
Title: "IG Creation Provenance"
Description: "Provenance Entry documenting the creation of this IG"
* target[+] = Reference(ValueSet/ValueSetIGHistoryActivity)
* recorded = "2023-01-26T00:00:00Z"
* occurredDateTime = "2023-01-23"
* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#METAMGT
  * text = "Monday"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent[+]
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
  * who
    * display = "Elliot"

