ValueSet: HierarchicalExtensionalConcreteConceptsValueSet
Id: HierarchicalExtensionalConcreteConceptsValueSet
Title: "All concrete concepts defined extensionally ValueSet"
Description: "This is an example of the desired output of an \"all concrete values\" ValueSet. This ValueSet has been created extensionally from a hierarchical CodeSystem. However, the desire is to be able to create an equivalent ValueSet intensionally, and have the expansion of the ValueSet in the IG."
* HierarchicalCodeSystem#A1
* HierarchicalCodeSystem#A2
* HierarchicalCodeSystem#B1
* HierarchicalCodeSystem#B2


ValueSet: HierarchicalIntensionalConcreteConceptsByAbsentNotSelectableValueSet
Id: HierarchicalIntensionalConcreteConceptsByAbsentNotSelectableValueSet
Title: "All concrete concepts defined intensionally by absent notSelectable value ValueSet"
Description: """Failure. This ValueSet causes an IG QA error, and no expansion is generated.

This is an attempt to create a concrete values ValueSet. This ValueSet has been created intensionally. However, the desire is to be able to have the expansion of the ValueSet in the IG."""
//* codes from system HierarchicalCodeSystem where notSelectable exists false
* codes from system HierarchicalCodeSystem where notSelectable = "false"


ValueSet: HierarchicalIntensionalConcreteConceptsByNotSelectableNotTrueValueSet
Id: HierarchicalIntensionalConcreteConceptsByNotSelectableNotTrueValueSet
Title: "All concrete concepts defined intensionally by notSelectable not true ValueSet"
Description: """Failure. This ValueSet causes an IG QA error, and no expansion is generated.

This is an attempt to create a concrete values ValueSet. This ValueSet has been created intensionally. However, the desire is to be able to have the expansion of the ValueSet in the IG.

This may be sushi processing, but the property value must be presented as a string (\"true\"), not code (#true) or boolean (true)."""
* codes from system HierarchicalCodeSystem where notSelectable not-in "true"


ValueSet: HierarchicalIntensionalConcreteConceptsByExcludingNotSelectableValueSet
Id: HierarchicalIntensionalConcreteConceptsByExcludingNotSelectableValueSet
Title: "All concrete concepts defined intensionally by removing notSelectable concepts ValueSet"
Description: """Failure. The expansion of this ValueSet contains no elements.

This is an attempt to create a concrete values ValueSet. This ValueSet has been created intensionally."""
* codes from system HierarchicalCodeSystem
* exclude codes from system HierarchicalCodeSystem where notSelectable = "true"
// * codes from system HierarchicalCodeSystem where notSelectable = "true"


ValueSet: HierarchicalIntensionalDecendantsOfAValueSet
Id: HierarchicalIntensionalDecendantsOfAValueSet
Title: "Category A concepts defined intensionally by descendants of A ValueSet"
Description: """Success.

This is an attempt to create a ValueSet of descendants of _A. This ValueSet has been created intensionally.

This may be sushi processing, but the property value may be presented as a string (\"_A\"), or code (#_A)."""
* codes from system HierarchicalCodeSystem where concept descendant-of #_A

