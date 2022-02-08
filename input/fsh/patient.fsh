

CodeSystem: AlphaCS
Id: alpha-code-system
Title: "Alpha Code System"
Description: "TBD"
* ^caseSensitive = true
* #A1
* #A2
* #A3

ValueSet: AlphaVS
Id: alpha-value-set
Title: "Alpha Value Set"
Description: "TBD"
* include codes from system AlphaCS

CodeSystem: BravoCS
Id: bravo-code-system
Title: "Bravo Code System"
Description: "TBD"
* ^caseSensitive = true
* #B1
* #B2
* #B3

ValueSet: BravoVS
Id: bravo-value-set
Title: "Bravo Value Set"
Description: "TBD"
* include codes from system BravoCS

CodeSystem: CharlieCS
Id: charlie-code-system
Title: "Charlie Code System"
Description: "TBD"
* ^caseSensitive = true
* #C1
* #C2
* #C3

ValueSet: CharlieVS
Id: charlie-value-set
Title: "Charlie Value Set"
Description: "TBD"
* include codes from system CharlieCS

Profile: MyPractitionerRoleA
Parent: PractitionerRole
Description: "An example profile of the PractitionerRole resource that defines slicing on a single CodeableConcept."
* code 1..1
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* code contains alpha ..1 and bravo ..1
* code[alpha] from AlphaVS (required)
* code[bravo] from BravoVS (required)

Instance: PractitionerRoleExampleA1
InstanceOf: MyPractitionerRoleA
Description: "This is an invalid example because code matches two slices - alpha and bravo. This may be counter to many people's expectations. (There is a single CodeableConcept containing multiple codings.)"
* code.coding[+] = AlphaCS#A1
* code.coding[+] = BravoCS#B1

Instance: PractitionerRoleExampleA2
InstanceOf: MyPractitionerRoleA
Description: "This is a valid exaple because code matches only the alpha slice. (There is a single CodeableConcept containing multiple codings.)"
* code.coding[+] = AlphaCS#A1
* code.coding[+] = CharlieCS#C1

Profile: MyPractitionerRoleB
Parent: PractitionerRole
Description: "An example profile of the PractitionerRole resource that defines slicing on Coding within a single CodeableConcept."
* code 1..1
* code.coding
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* code.coding contains alpha ..1 and bravo ..1
* code.coding[alpha] from AlphaVS (required)
* code.coding[bravo] from BravoVS (required)

Instance: PractitionerRoleExampleB1
InstanceOf: MyPractitionerRoleB
Description: "This is a valid example because each repetition of coding matches one slice. (There is a single CodeableConcept containing multiple codings.)"
* code.coding[+] = AlphaCS#A1
* code.coding[+] = BravoCS#B1

Instance: PractitionerRoleExampleB2
InstanceOf: MyPractitionerRoleB
Description: "This is a valid example. The first repetition of coding matches the alpha slice; the second repetition doesn't match any slice (There is a single CodeableConcept containing multiple codings.)"
* code.coding[+] = AlphaCS#A1
* code.coding[+] = CharlieCS#C1

// Profile: MyPractitionerRoleC
// Parent: PractitionerRole
// Description: "An example profile of the PractitionerRole resource that defines slicing on CodeableConcept repetitions."
// * code
//   * ^slicing.discriminator.type = #pattern
//   * ^slicing.discriminator.path = "$this"
//   * ^slicing.rules = #open
// * code contains alpha ..1 and bravo ..1
// * code[alpha] from AlphaVS (required)
// * code[bravo] from BravoVS (required)

// Instance: PractitionerRoleExampleC1
// InstanceOf: MyPractitionerRoleC
// Description: "This is an invalid example because code matches two slices - alpha and bravo. This may be counter to many people's expectations. (There is a single CodeableConcept containing multiple codings.)"
// * code[+] = AlphaCS#A1
// * code[+] = BravoCS#B1

// Instance: PractitionerRoleExampleC2
// InstanceOf: MyPractitionerRoleC
// Description: "This is a valid exaple because code matches only the alpha slice. (There is a single CodeableConcept containing multiple codings.)"
// * code[+] = AlphaCS#A1
// * code[+] = CharlieCS#C1

// Profile: MyPractitionerRoleD
// Parent: PractitionerRole
// Description: "An example profile of the PractitionerRole resource that defines slicing on Codings within CodeableConcept repetitions."
// * code.coding
//   * ^slicing.discriminator.type = #pattern
//   * ^slicing.discriminator.path = "$this"
//   * ^slicing.rules = #open
// * code.coding contains alpha ..1 and bravo ..1
// * code.coding[alpha] from AlphaVS (required)
// * code.coding[bravo] from BravoVS (required)

// Instance: PractitionerRoleExampleD1
// InstanceOf: MyPractitionerRoleD
// Description: "This is a valid example because each repetition of coding matches one slice. (There is a single CodeableConcept containing multiple codings.)"
// * code[+] = AlphaCS#A1
// * code[+] = BravoCS#B1

// Instance: PractitionerRoleExampleD2
// InstanceOf: MyPractitionerRoleD
// Description: "This is a valid example. The first repetition of coding matches the alpha slice; the second repetition doesn't match any slice (There is a single CodeableConcept containing multiple codings.)"
// * code[+] = AlphaCS#A1
// * code[+] = CharlieCS#C1