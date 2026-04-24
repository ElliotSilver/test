Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10-cm
Alias: $ICD9 = http://hl7.org/fhir/sid/icd-9-cm


ValueSet: SNOMEDIndicators
Title: "SNOMED CT Indicators"
Description: """
  Value set of SNOMED CT codes that may be indicators
  """
* ^status = #active
* ^experimental = false
* http://snomed.info/sct#1023001
* http://snomed.info/sct#102549009
* http://snomed.info/sct#111487009
* http://snomed.info/sct#1201005
//* http://snomed.info/sct#1367959007
* http://snomed.info/sct#13791008
* http://snomed.info/sct#141000119100
* http://snomed.info/sct#15976004
* http://snomed.info/sct#190966007
* http://snomed.info/sct#193462001
* http://snomed.info/sct#230489007
* http://snomed.info/sct#230493001
* http://snomed.info/sct#230496009
* http://snomed.info/sct#233950008
* http://snomed.info/sct#238131007
* http://snomed.info/sct#238136002
* http://snomed.info/sct#23871000119106
* http://snomed.info/sct#24184005
* http://snomed.info/sct#248263006
* http://snomed.info/sct#25064002
* http://snomed.info/sct#267036007
* http://snomed.info/sct#271782001
* http://snomed.info/sct#271793004
* http://snomed.info/sct#271824009
* http://snomed.info/sct#27405005
* http://snomed.info/sct#274950005
* http://snomed.info/sct#276792008
* http://snomed.info/sct#277180005
* http://snomed.info/sct#31537005
* http://snomed.info/sct#32914008
* http://snomed.info/sct#367391008
* http://snomed.info/sct#387604006
* http://snomed.info/sct#389087006
* http://snomed.info/sct#39898005
* http://snomed.info/sct#399040002
* http://snomed.info/sct#414916001
* http://snomed.info/sct#415238003
* http://snomed.info/sct#418763003
* http://snomed.info/sct#419145002
* http://snomed.info/sct#430893009
* http://snomed.info/sct#441830002
* http://snomed.info/sct#441910000
* http://snomed.info/sct#442292004
* http://snomed.info/sct#442416002
* http://snomed.info/sct#449160007
* http://snomed.info/sct#58690002
* http://snomed.info/sct#59621000
* http://snomed.info/sct#60380001
* http://snomed.info/sct#62744007
* http://snomed.info/sct#697914005
* http://snomed.info/sct#697915006
* http://snomed.info/sct#70995007
* http://snomed.info/sct#713498009
* http://snomed.info/sct#723881000
* http://snomed.info/sct#724752004
* http://snomed.info/sct#72863001
* http://snomed.info/sct#73430006
* http://snomed.info/sct#77692006
* http://snomed.info/sct#78275009
* http://snomed.info/sct#78975002
* http://snomed.info/sct#79280005
* http://snomed.info/sct#80495009
* http://snomed.info/sct#80623000
* http://snomed.info/sct#840306007
* http://snomed.info/sct#840307003
* http://snomed.info/sct#840308008
* http://snomed.info/sct#84229001
* http://snomed.info/sct#88223008
* http://snomed.info/sct#89675003
* http://snomed.info/sct#9741000119101


ValueSet: ConditionCodes
Title: "Condition Codes"
Description: """
  Value set of codes that may be found in Condition.code elements that are indicators for testing.
  """
* ^status = #active
* ^experimental = false

* include codes from system http://snomed.info/sct and valueset SNOMEDIndicators where concept is-a #64572001 // Disease
* include codes from system http://snomed.info/sct and valueset SNOMEDIndicators where concept is-a #404684003 // Clinical finding

ValueSet: ObservationCodes
Title: "Observation Codes"
Description: """
  Value set of codes that may be used in Observation.code elements that are indicators for testing.
  """
* ^status = #active
* ^experimental = false

* include codes from system http://snomed.info/sct and valueset SNOMEDIndicators where concept is-a #363787002 // Observable entity
* include codes from system http://snomed.info/sct and valueset SNOMEDIndicators where concept is-a #404684003 // Clinical finding



ValueSet: ICD9Indicators
Title: "ICD-9-CM Indicators"
Description: """
  Value set of ICD-9-CM codes that may be indicators for testing.
  """
* ^status = #active
* ^experimental = false
* $ICD9#278.00
* $ICD9#278.01
* $ICD9#278.02
* $ICD9#278.03
* $ICD9#307.44
* $ICD9#307.46
* $ICD9#307.47
* $ICD9#307.49
* $ICD9#327.09
* $ICD9#327.10
* $ICD9#327.19
* $ICD9#327.20
* $ICD9#327.22
* $ICD9#327.23
* $ICD9#327.25
* $ICD9#327.26
* $ICD9#327.27
* $ICD9#327.29
* $ICD9#327.30
* $ICD9#327.31
* $ICD9#327.32
* $ICD9#327.33
* $ICD9#327.34
* $ICD9#327.35
* $ICD9#327.36
* $ICD9#327.39
* $ICD9#327.49
* $ICD9#327.51
* $ICD9#327.59
* $ICD9#327.8
* $ICD9#333.94
* $ICD9#347.00
* $ICD9#347.01
* $ICD9#347.10
* $ICD9#347.11
* $ICD9#401.9
* $ICD9#416.8
* $ICD9#780.50
* $ICD9#780.51
* $ICD9#780.52
* $ICD9#780.53
* $ICD9#780.54
* $ICD9#780.57
* $ICD9#780.79
* $ICD9#784.0
* $ICD9#786.02
* $ICD9#786.03
* $ICD9#786.04
* $ICD9#786.05
* $ICD9#786.09
* $ICD9#796.2
* $ICD9#799.02


ValueSet: ICD10Indicators
Title: "ICD-10-CM Indicators"
Description: """
  Value set of ICD-10-CM codes that may be indicators for testing.
  """
* ^status = #active
* ^experimental = false
* $ICD10#E66.01
* $ICD10#E66.2
* $ICD10#E66.3
* $ICD10#E66.9
* $ICD10#F51.3
* $ICD10#F51.4
* $ICD10#F51.5
* $ICD10#F51.8
* $ICD10#G25.81
* $ICD10#G47.00
* $ICD10#G47.01
* $ICD10#G47.09
* $ICD10#G47.10
* $ICD10#G47.11
* $ICD10#G47.12
* $ICD10#G47.14
* $ICD10#G47.19
* $ICD10#G47.20
* $ICD10#G47.21
* $ICD10#G47.22
* $ICD10#G47.23
* $ICD10#G47.24
* $ICD10#G47.25
* $ICD10#G47.26
* $ICD10#G47.27
* $ICD10#G47.29
* $ICD10#G47.30
* $ICD10#G47.31
* $ICD10#G47.32
* $ICD10#G47.33
* $ICD10#G47.34
* $ICD10#G47.35
* $ICD10#G47.37
* $ICD10#G47.39
* $ICD10#G47.411
* $ICD10#G47.419
* $ICD10#G47.421
* $ICD10#G47.429
* $ICD10#G47.50
* $ICD10#G47.51
* $ICD10#G47.52
* $ICD10#G47.53
* $ICD10#G47.54
* $ICD10#G47.59
* $ICD10#G47.61
* $ICD10#G47.62
* $ICD10#G47.63
* $ICD10#G47.69
* $ICD10#G47.8
* $ICD10#G47.9
* $ICD10#I10
* $ICD10#I27.20
* $ICD10#R03.0
* $ICD10#R06.00
* $ICD10#R06.01
* $ICD10#R06.02
* $ICD10#R06.09
* $ICD10#R06.3
* $ICD10#R06.81
* $ICD10#R06.83
* $ICD10#R06.89
* $ICD10#R09.02
* $ICD10#R40.0
* $ICD10#R51
* $ICD10#R53.1
* $ICD10#R53.81
* $ICD10#R53.83

RuleSet: AddMapping(source, target, equivalence)
* element[+]
  * code = {source}
  * target[+]
    * code = {target}
    * equivalence = {equivalence}


Instance: ICD9ToICD10IndicatorConceptMap
InstanceOf: ConceptMap
Title: "ICD-9 to ICD-10 Indicator Concept Map"
Description: """
  ConceptMap mapping ICD-9-CM codes that may be indicators for testing to their corresponding ICD-10-CM codes.

  If source element is removed, there is a warning "No Source Code System, so the source codes cannot be checked" (and equivalent for target element), but if they are present then I get warnings about the codes not being found in the source (target) value set.
  """
Usage: #definition
* status = #active
* experimental = false
* name = "ICD9ToICD10IndicatorConceptMap"
* sourceCanonical = Canonical(ICD9Indicators)
* targetCanonical = Canonical(ICD10Indicators)
* group
  * source = $ICD9
  * target = $ICD10
  * insert AddMapping(#278.00, #E66.9, #equivalent)
  * insert AddMapping(#278.01, #E66.01, #equivalent)
  * insert AddMapping(#278.02, #E66.3, #equivalent)
  * insert AddMapping(#278.03, #E66.2, #equivalent)
  * insert AddMapping(#307.44, #G47.11, #equivalent)
  * insert AddMapping(#307.46, #F51.3, #equivalent)
  * insert AddMapping(#307.47, #F51.5, #equivalent)
  * insert AddMapping(#307.49, #F51.8, #equivalent)
  * insert AddMapping(#327.09, #G47.09, #equivalent)
  * insert AddMapping(#327.10, #G47.10, #equivalent)
  * insert AddMapping(#327.19, #G47.19, #equivalent)
  * insert AddMapping(#327.20, #G47.30, #equivalent)
  * insert AddMapping(#327.22, #G47.32, #equivalent)
  * insert AddMapping(#327.23, #G47.33, #equivalent)
  * insert AddMapping(#327.25, #G47.35, #equivalent)
  * insert AddMapping(#327.26, #G47.34, #equivalent)
  * insert AddMapping(#327.27, #G47.31, #equivalent)
  * insert AddMapping(#327.29, #G47.39, #equivalent)
  * insert AddMapping(#327.30, #G47.20, #equivalent)
  * insert AddMapping(#327.31, #G47.21, #equivalent)
  * insert AddMapping(#327.32, #G47.22, #equivalent)
  * insert AddMapping(#327.33, #G47.23, #equivalent)
  * insert AddMapping(#327.34, #G47.24, #equivalent)
  * insert AddMapping(#327.35, #G47.25, #equivalent)
  * insert AddMapping(#327.36, #G47.26, #equivalent)
  * insert AddMapping(#327.39, #G47.29, #equivalent)
  * insert AddMapping(#327.49, #G47.59, #equivalent)
  * insert AddMapping(#327.51, #G47.61, #equivalent)
  * insert AddMapping(#327.59, #G47.69, #equivalent)
  * insert AddMapping(#327.8, #G47.8, #equivalent)
  * insert AddMapping(#333.94, #G25.81, #equivalent)
  * insert AddMapping(#347.00, #G47.419, #equivalent)
  * insert AddMapping(#347.01, #G47.411, #equivalent)
  * insert AddMapping(#347.10, #G47.429, #equivalent)
  * insert AddMapping(#347.11, #G47.421, #equivalent)
  * insert AddMapping(#401.9, #I10, #equivalent)
  * insert AddMapping(#416.8, #I27.20, #equivalent)
  * insert AddMapping(#780.50, #G47.9, #equivalent)
  * insert AddMapping(#780.51, #G47.00, #equivalent)
  * insert AddMapping(#780.52, #G47.00, #equivalent)
  * insert AddMapping(#780.53, #G47.30, #equivalent)
  * insert AddMapping(#780.54, #G47.10, #equivalent)
  * insert AddMapping(#780.57, #G47.30, #equivalent)
  * insert AddMapping(#780.79, #R53.83, #equivalent)
  * insert AddMapping(#784.0, #R51, #equivalent)
  * insert AddMapping(#786.02, #R06.01, #equivalent)
  * insert AddMapping(#786.03, #R06.81, #equivalent)
  * insert AddMapping(#786.04, #R06.3, #equivalent)
  * insert AddMapping(#786.05, #R06.02, #equivalent)
  * insert AddMapping(#786.09, #R06.00, #equivalent)
  * insert AddMapping(#796.2, #R03.0, #equivalent)
  * insert AddMapping(#799.02, #R09.02, #equivalent)
