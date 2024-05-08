Alias: $LNC = http://loinc.org

RuleSet: LoincAnsweredBy(answerlist)
* ^id = "toc-loinc-answered-by-{answerlist}-vs"
* ^title = "Transitions of Care LOINC Terms Answered by {answerlist} Answer List Value Set"
* ^description = """This value set includes those LOINC terms that are defined to be answered by LOINC answer list {answerlist}.
  Ideally, this could be intensionally defined as terms where the answer-list property is "{answerlist}", however at publication time, this property is not supported by the FHIR terminology server at tx.fhir.org."""
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2024, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
// * include codes from system http://loinc.org where answer-list = "{answerlist}"


RuleSet: DelLoincAnsweredBy(answerlist, loincAnsweredBy)
* ^id = "toc-del-loinc-answered-by-{answerlist}-vs"
* ^title = "Transitions of Care LOINC Terms Included in the DEL Answered by {answerlist} Answer List Value Set"
* ^description = "This value set includes those LOINC terms that included in the DEL which are defined to be answered by LOINC answer list {answerlist}."
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2024, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* include codes from valueset {loincAnsweredBy} and TocDELItemsLOINC


ValueSet: TocDELItemsLOINC
Title: "Transitions of Care DEL LOINC Terms Value Set"
Description: "This value set includes those LOINC terms that are used by the DEL."
Id: toc-del-loinc-vs
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2024, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc."
* $LNC#21112-8
* $LNC#21843-8
* $LNC#45396-9
* $LNC#45401-7
* $LNC#46098-0
* $LNC#46496-6
* $LNC#46499-0
* $LNC#46552-6
* $LNC#46553-4
* $LNC#46582-3
* $LNC#46587-2
* $LNC#46589-8
* $LNC#46592-2
* $LNC#46595-5
* $LNC#46597-1
* $LNC#46599-7
* $LNC#50786-3
* $LNC#52462-9
* $LNC#52463-7
* $LNC#52525-3
* $LNC#52539-4
* $LNC#52552-7
* $LNC#52556-8
* $LNC#52731-7
* $LNC#52732-5
* $LNC#52733-3
* $LNC#52735-8
* $LNC#52736-6
* $LNC#52737-4
* $LNC#52797-8
* $LNC#54503-8
* $LNC#54519-4
* $LNC#54588-9
* $LNC#54589-7
* $LNC#54594-7
* $LNC#54597-0
* $LNC#54599-6
* $LNC#54600-2
* $LNC#54602-8
* $LNC#54604-4
* $LNC#54605-1
* $LNC#54609-3
* $LNC#54614-3
* $LNC#54615-0
* $LNC#54616-8
* $LNC#54617-6
* $LNC#54634-1
* $LNC#54637-4
* $LNC#54638-2
* $LNC#54639-0
* $LNC#54640-8
* $LNC#54641-6
* $LNC#54642-4
* $LNC#54643-2
* $LNC#54644-0
* $LNC#54645-7
* $LNC#54646-5
* $LNC#54647-3
* $LNC#54648-1
* $LNC#54649-9
* $LNC#54650-7
* $LNC#54651-5
* $LNC#54658-0
* $LNC#54659-8
* $LNC#54660-6
* $LNC#54661-4
* $LNC#54662-2
* $LNC#54663-0
* $LNC#54664-8
* $LNC#54665-5
* $LNC#54666-3
* $LNC#54667-1
* $LNC#54668-9
* $LNC#54669-7
* $LNC#54670-5
* $LNC#54671-3
* $LNC#54672-1
* $LNC#54673-9
* $LNC#54674-7
* $LNC#54675-4
* $LNC#54676-2
* $LNC#54677-0
* $LNC#54682-0
* $LNC#54683-8
* $LNC#54684-6
* $LNC#54685-3
* $LNC#54686-1
* $LNC#54687-9
* $LNC#54688-7
* $LNC#54689-5
* $LNC#54690-3
* $LNC#54691-1
* $LNC#54692-9
* $LNC#54693-7
* $LNC#54694-5
* $LNC#54695-2
* $LNC#54696-0
* $LNC#54697-8
* $LNC#54701-8
* $LNC#54713-3
* $LNC#54773-7
* $LNC#54833-9
* $LNC#54834-7
* $LNC#54845-3
* $LNC#54846-1
* $LNC#54850-3
* $LNC#54851-1
* $LNC#54852-9
* $LNC#54853-7
* $LNC#54854-5
* $LNC#54855-2
* $LNC#54856-0
* $LNC#54857-8
* $LNC#54884-2
* $LNC#54886-7
* $LNC#54887-5
* $LNC#54890-9
* $LNC#54893-3
* $LNC#54894-1
* $LNC#54899-0
* $LNC#54904-8
* $LNC#54946-9
* $LNC#54947-7
* $LNC#54950-1
* $LNC#54951-9
* $LNC#55019-4
* $LNC#55020-2
* $LNC#55022-8
* $LNC#55124-2
* $LNC#55125-9
* $LNC#55126-7
* $LNC#55128-3
* $LNC#57208-1
* $LNC#57222-2
* $LNC#57231-3
* $LNC#57232-1
* $LNC#57233-9
* $LNC#57234-7
* $LNC#57235-4
* $LNC#57236-2
* $LNC#57237-0
* $LNC#57243-8
* $LNC#57244-6
* $LNC#57246-1
* $LNC#57247-9
* $LNC#57248-7
* $LNC#57260-2
* $LNC#57262-8
* $LNC#57263-6 
* $LNC#57265-1
* $LNC#57276-8
* $LNC#57277-6
* $LNC#57280-0
* $LNC#57284-2
* $LNC#57285-9
* $LNC#57319-6
* $LNC#58104-1
* $LNC#58118-1
* $LNC#58127-2
* $LNC#58128-0
* $LNC#58131-4
* $LNC#58141-3
* $LNC#58146-2
* $LNC#58149-6
* $LNC#58214-8
* $LNC#68468-8
* $LNC#69854-8
* $LNC#71440-2
* $LNC#71441-0
* $LNC#71447-7
* $LNC#71448-5
* $LNC#71449-3
* $LNC#75618-9
* $LNC#76468-8
* $LNC#76696-4
* $LNC#81885-6
* $LNC#83246-9
* $LNC#83252-7
* $LNC#83256-8
* $LNC#85070-1
* $LNC#85073-5
* $LNC#85396-0
* $LNC#85398-6
* $LNC#85399-4
* $LNC#85400-0
* $LNC#85402-6
* $LNC#85407-5
* $LNC#85411-7
* $LNC#85417-4
* $LNC#85418-2
* $LNC#85419-0
* $LNC#85493-5
* $LNC#85585-8
* $LNC#85813-4
* $LNC#85918-1
* $LNC#85920-7
* $LNC#86471-0
* $LNC#86495-9
* $LNC#86527-9
* $LNC#86597-2
* $LNC#86624-4
* $LNC#86671-5
* $LNC#86675-6
* $LNC#86676-4
* $LNC#86677-2
* $LNC#86678-0
* $LNC#86748-1
* $LNC#86761-4
* $LNC#86763-0
* $LNC#86767-1
* $LNC#86768-9
* $LNC#86786-1
* $LNC#86787-9
* $LNC#86788-7
* $LNC#86789-5
* $LNC#86790-3
* $LNC#86791-1
* $LNC#86792-9
* $LNC#86793-7
* $LNC#86851-3
* $LNC#87538-5
* $LNC#87539-3
* $LNC#87540-1
* $LNC#87541-9
* $LNC#87542-7
* $LNC#88296-9
* $LNC#88297-7
* $LNC#88298-5
* $LNC#88299-3
* $LNC#88300-9
* $LNC#88308-2
* $LNC#88309-0
* $LNC#88310-8
* $LNC#88311-6
* $LNC#88312-4
* $LNC#88313-2
* $LNC#88314-0
* $LNC#88465-0
* $LNC#88489-0
* $LNC#88490-8
* $LNC#88961-8
* $LNC#89381-8
* $LNC#89383-4
* $LNC#89385-9
* $LNC#89390-9
* $LNC#89402-2
* $LNC#89409-7
* $LNC#89412-1
* $LNC#89416-2
* $LNC#89418-8
* $LNC#89420-4
* $LNC#90489-6
* $LNC#90543-0
* $LNC#90544-8
* $LNC#92850-7
* $LNC#92851-5
* $LNC#93156-8
* $LNC#93159-2
* $LNC#93160-0
* $LNC#93181-6
* $LNC#93182-4
* $LNC#93202-0
* $LNC#93203-8
* $LNC#94876-0
* $LNC#94877-8
* $LNC#94878-6
* $LNC#94879-4
* $LNC#94880-2
* $LNC#94881-0
* $LNC#94882-8
* $LNC#94883-6
* $LNC#94884-4
* $LNC#94885-1
* $LNC#94886-9
* $LNC#94887-7
* $LNC#94888-5
* $LNC#94889-3
* $LNC#94890-1
* $LNC#94891-9
* $LNC#94892-7
* $LNC#94893-5
* $LNC#94894-3
* $LNC#94895-0
* $LNC#94896-8
* $LNC#94897-6
* $LNC#94898-4
* $LNC#94899-2
* $LNC#94900-8
* $LNC#94901-6
* $LNC#94902-4
* $LNC#94903-2
* $LNC#94904-0
* $LNC#94905-7
* $LNC#94906-5
* $LNC#94907-3
* $LNC#94908-1
* $LNC#94910-7
* $LNC#94911-5
* $LNC#94912-3
* $LNC#94913-1
* $LNC#94914-9
* $LNC#94915-6
* $LNC#94916-4
* $LNC#94917-2
* $LNC#94918-0
* $LNC#94919-8
* $LNC#94920-6
* $LNC#94921-4
* $LNC#94922-2
* $LNC#94923-0
* $LNC#94924-8
* $LNC#94925-5
* $LNC#94926-3
* $LNC#94927-1
* $LNC#94928-9
* $LNC#94929-7
* $LNC#94930-5
* $LNC#94931-3
* $LNC#94932-1
* $LNC#94933-9
* $LNC#94934-7
* $LNC#94935-4
* $LNC#94936-2
* $LNC#94937-0
* $LNC#94938-8
* $LNC#94939-6
* $LNC#94940-4
* $LNC#94941-2
* $LNC#94942-0
* $LNC#94943-8
* $LNC#94944-6
* $LNC#94945-3
* $LNC#94946-1
* $LNC#94947-9
* $LNC#94948-7
* $LNC#94949-5
* $LNC#94950-3
* $LNC#94951-1
* $LNC#94952-9
* $LNC#94953-7
* $LNC#94954-5
* $LNC#94955-2
* $LNC#94956-0
* $LNC#94957-8
* $LNC#94958-6
* $LNC#94959-4
* $LNC#94960-2
* $LNC#94961-0
* $LNC#94962-8
* $LNC#94963-6
* $LNC#94964-4
* $LNC#94965-1
* $LNC#94966-9
* $LNC#94967-7
* $LNC#94968-5
* $LNC#94969-3
* $LNC#94970-1
* $LNC#94971-9
* $LNC#94972-7
* $LNC#94973-5
* $LNC#94974-3
* $LNC#94975-0
* $LNC#94976-8
* $LNC#94977-6
* $LNC#94978-4
* $LNC#94979-2
* $LNC#94980-0
* $LNC#94981-8
* $LNC#94982-6
* $LNC#94983-4
* $LNC#94984-2
* $LNC#94985-9
* $LNC#94986-7
* $LNC#94987-5
* $LNC#94988-3
* $LNC#94989-1
* $LNC#94990-9
* $LNC#94991-7
* $LNC#94992-5
* $LNC#94993-3
* $LNC#94994-1
* $LNC#94995-8
* $LNC#94996-6
* $LNC#94997-4
* $LNC#94998-2
* $LNC#94999-0
* $LNC#95000-6
* $LNC#95001-4
* $LNC#95002-2
* $LNC#95003-0
* $LNC#95004-8
* $LNC#95005-5
* $LNC#95006-3
* $LNC#95007-1
* $LNC#95008-9
* $LNC#95009-7
* $LNC#95010-5
* $LNC#95011-3
* $LNC#95012-1
* $LNC#95013-9
* $LNC#95014-7
* $LNC#95015-4
* $LNC#95016-2
* $LNC#95017-0
* $LNC#95018-8
* $LNC#95019-6
* $LNC#95021-2
* $LNC#95022-0
* $LNC#95035-2
* $LNC#95042-8
* $LNC#95043-6
* $LNC#95131-9
* $LNC#95737-3
* $LNC#95738-1
* $LNC#95739-9
* $LNC#95740-7
* $LNC#95744-9
* $LNC#95745-6
* $LNC#95813-2
* $LNC#101327-5
* $LNC#101330-9
* $LNC#101331-7
* $LNC#101333-3
* $LNC#101351-5
* $LNC#103693-8


ValueSet: TocLoincTermsAnsweredByLL6351
* insert LoincAnsweredBy(LL6351-2)
* $LNC#54658-0
* $LNC#54660-6
* $LNC#54662-2
* $LNC#54664-8
* $LNC#54666-3
* $LNC#54668-9
* $LNC#54670-5
* $LNC#54672-1
* $LNC#54673-9
* $LNC#54675-4


ValueSet: TocDelLoincTermsAnsweredByLL6351
* insert DelLoincAnsweredBy(LL6351-2, toc-loinc-answered-by-LL6351-2-vs)

