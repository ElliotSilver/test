ValueSet: AllCategoriesIntensionalConcreteConceptsValueSet
Id: AllCategoriesIntensionalConcreteConceptsValueSet
Title: "All concepts regardless of category defined intensionally ValueSet"
Description: """Success.

This ValueSet has been created intensionally from all concepts in the CategorizedCodeSystem. However, note that the categories of each concept are not displayed."""
* codes from system CategorizedCodeSystem


// ValueSet: CategoryACodeIntensionalValueSet
// Id: CategoryACodeIntensionalValueSet
// Title: "Category A concepts defined intensionally by category with a code value ValueSet"
// Description: """Failure. This ValueSet causes an sushi error 'Code \"A\" is not defined for system /CategorizedCodeSystem'.

// This ValueSet has been created intensionally from concepts in the A category from the CategorizedCodeSystem. However, note that the categories of each concept are not displayed."""
// * codes from system CategorizedCodeSystem where category = #A


ValueSet: CategoryAStringIntensionalValueSet
Id: CategoryAStringIntensionalValueSet
Title: "Category A concepts defined intensionally by category with a string value ValueSet"
Description: """Success.

This ValueSet has been created intensionally from concepts in the A category from the CategorizedCodeSystem. However, note that the categories of each concept are not displayed."""
* codes from system CategorizedCodeSystem where category = "A"
