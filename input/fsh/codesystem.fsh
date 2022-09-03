CodeSystem: HierarchicalCodeSystem
Id: HierarchicalCodeSystem
Title: "HierarchicalCodeSystem"
Description: "A code system where the concepts are in a parent-child hierarchy"
* ^caseSensitive = true
// * ^hierarchyMeaning = #grouped-by
* ^hierarchyMeaning = #is-a
* ^property[+].code = #notSelectable
* ^property[=].uri = http://hl7.org/fhir/concept-properties#notSelectable
* ^property[=].description = "Indicates that the code is abstract - only intended to be used as a selector for other concepts"
* ^property[=].type = #boolean
* #_A "A (abstract)" "A not selectable"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * #A1 "A1 display" "A1 meaning"
  * #A2 "A2 display" "A2 meaning"
* #_B "B (abstract)" "B not selectable"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * #B1 "B1 display" "B1 meaning"
  * #B2 "B2 display" "B2 meaning"

CodeSystem: CodeSystemPropertiesCodeSystem
Id: CodeSystemPropertiesCodeSystem
Title: "CodeSystemPropertiesCodeSystem"
Description: "A code system that defines properties of code systems"
* ^caseSensitive = true
* #category "concept category"

// Alias: $PROPERTIES = Canonical(CodeSystemPropertiesCodeSystem)

CodeSystem: ConceptCategoryCodeSystem
Id: ConceptCategoryCodeSystem
Title: "ConceptCategoryCodeSystem"
Description: "A code system that defines categories of concepts"
* ^caseSensitive = true
* #A "category A"
* #B "category B"

CodeSystem: CategorizedCodeSystem
Id: CategorizedCodeSystem
Title: "CategorizedCodeSystem"
Description: "A code system where the concepts are categoried by a property"
* ^caseSensitive = true
* ^property[+].code = #category
// * ^property[=].uri = $PROPERTIES#category
* ^property[=].uri = Canonical(CodeSystemPropertiesCodeSystem)
* ^property[=].description = "The category of the code"
* ^property[=].type = #code
* #A1 "A1 display" "A1 meaning"
  * ^property[+].code = #category
  * ^property[=].valueCode = #A
* #A2 "A2 display" "A2 meaning"
  * ^property[+].code = #category
  * ^property[=].valueCode = #A
* #B1 "B1 display" "B1 meaning"
  * ^property[+].code = #category
  * ^property[=].valueCode = #B
* #B2 "B2 display" "B2 meaning"
  * ^property[+].code = #category
  * ^property[=].valueCode = #B
