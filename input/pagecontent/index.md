# HierarchyTest

This is a text of selecting CodeSystem subsets.

Two CodeSystems were defined:
* a [hierarchical code system](CodeSystem-HierarchicalCodeSystem.html) (heirarchy meaning is-a and grouped-by perform equivalently) using the hierarchy to define two categories as abstract concepts, and two concrete child concepts in each category.
* a [flat code system](CodeSystem-CategorizedCodeSystem.html), using code system properties to define two "categories" and placing two concrete concepts in each of the two categories.

For each of the code systems, it was attempted to intensionally define two different value sets:
* a ValueSet of all concrete concepts 
* a ValueSet of only concrete concepts from category

The resulting ValueSet needed to include an expansion in the IG publisher output.

# Results

Foo

| CodeSystem | All concrete value | Values from a single category |
| --- | --- | --- |
| **Hierarchical** | Failure<br>Could not intensionally define with a rendered expansion.<br>["absence of notSelectable"](./ValueSet-HierarchicalIntensionalConcreteConceptsByAbsentNotSelectableValu.html)<br>["notSelectable not-in true"](./ValueSet-HierarchicalIntensionalConcreteConceptsByNotSelectableNotTrueVal.html)<br>["exclude notSelectable"](./ValueSet-HierarchicalIntensionalConcreteConceptsByExcludingNotSelectableV.html) | Success.<br>["descendants of"](./ValueSet-HierarchicalIntensionalDecendantsOfAValueSet.html) |
| **Categorized** | Success.<br>Note: all values are concrete, so this is simply [the code system](./ValueSet-AllCategoriesIntensionalConcreteConceptsValueSet.html) | Success.<br>["category filter"](./ValueSet-CategoryAStringIntensionalValueSet.html) |
{: .grid}

The fsh source for this IG contains one commented out valueset that causes errors in sushi.

# Issues
* nonSelectable concepts are not visually distingushed. It would be helpful if abstract concepts code, display, and definition values were, e.g., italicized.
* Code system properties are not displayed at all. Although the existance of a property is shown on the code system page, the value of a property for a particular concept is not shown.
* There is no way to filter on a property "not equal to" a value, e.g. notSelectable = true should give all abstract concepts; there is no equivalent inverse operation.
* Many expansions fail.
* It is unclear how to represent non-string property values in filters. Boolean values are outright rejected by Sushi; code values need to be expressed as strings.
* The relationship between the code system defining the property name (does this actually have to be part of a code system, or can it just be a standalone code?) and the property values is unclear.