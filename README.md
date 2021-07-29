# Intro to FHIR IG Publisher and Sushi
* http://build.fhir.org/ig/FHIR/sample-ig/ (https://github.com/FHIR/sample-ig)
* create project on github
* create new workspace and connect to project
## Create a sushi project
* https://build.fhir.org/ig/HL7/fhir-shorthand/ (https://github.com/HL7/fhir-shorthand)
* https://fshschool.org/docs/sushi/
* cd to parent directory
* sushi --init, show created content
* add publisher/name, publisher/url, title, description to sushi-config.yaml* 
* run sushi, show created content
## Run IG Publisher
* https://github.com/FHIR/latest-ig-publisher
* https://github.com/HL7/fhir-ig-publisher
* chmod ugo+x *.sh
* run _updatepublisher (https://github.com/HL7/ig-publisher-scripts)
* add publisher info to sushi-config.yaml
* run _genonce
* review index.html
* review qa.html
## Modifying the template
* http://build.fhir.org/ig/FHIR/ig-guidance/index.html
* create a directory "joel-template", "joel-template/package"
* create package/package.json:
```json
{
    "name": "joel.template",
    "version": "0.1",
    "type": "fhir.template",
    "license": "CC0-1.0",
    "description": "Sample template for Joel",
    "base": "fhir.base.template",
    "dependencies": {
        "fhir.base.template": "current"
    }
}
```
* create joel-template/{inclues,content/assets/{css,image}}
* copy logo file to content/assets/images/main_logo.png
* create content/assets/css/joel-template.css:
```css
/* #segment-footer > .container {background-color: #e02e3b;}
.navbar-inverse {background-color: #e02e3b;}
*/
:root {
    --ig-status-text-color: #0093d5; /* 1. IG Title and status text color */
    --navbar-bg-color: #e02e3b; /* 2. Header container color */
    --footer-bg-color: #23313a; /* 3. Footer background color*/
    --footer-container-color: #23313a; /* 4. Footer container color */
    --stripe-bg-color: #e02e3b; /* 5. Header strip color */
    --btn-hover-color: #d86422;  /* 6. Menu button hover color */
    --btn-active-color: #2a6496; /* 7. Menu button active color */
    --btn-text-color: white; /* 8. Menu button text color */
    --link-color: #2a6496; /* 13. Hyperlink text color */
    --link-hover-color: #e02e3b; /* 14. Hyperlink text hover color */
    --publish-box-bg-color: #d82138; /* 15. Publish box background color */
    --publish-box-border: 1px solid #23313a; /* 16.  Publish box border definition */
    --toc-box-bg-color: #ebebeb; /* 17.  TOC box background color */
    --toc-box-border: 1px solid #23313a; /* 18. TOC box border definition */
    --ig-header-color: white; /* 21. Header color (sides) -- main bg color */
    --ig-header-container-color: white; /* 22. Header container color (center) */

    --btn-gradient-start-color: #428bca; /* 9. Menu item gradient start color */
    --btn-gradient-end-color: #357ebd; /* 10. Menu item gradient end  color */
    --btn-gradient-start-color-alpha: #ff428bca; /* 11. Menu item gradient start color (with alpha) */
    --btn-gradient-end-color-alpha: #ff357ebd; /* 12. Menu item gradient end color (with alpha) */
    --stu-note-background-color: #fff2ff; /* 19. (STU) Note box background color */
    --stu-note-border-left-color: #ffa0ff; /* 20. (STU) Note box border color */
}  
```
* create includes/_append.fragment-css.html:
```html
  <link href="assets/css/joel-template.css" rel="stylesheet"/>
```
* create includes/_append.fragment-header.html
```html
  <div id="hl7-nav"> 
     <a id="hl7-logo" no-external="true" href="http://example.org/index.html">
     <img height="50" alt="Infoway" src="assets/images/main_logo.png"/>
     </a>
```
* change ig.ini template to name of directory
```yaml
;template = fhir.base.template#current
template = joel-template
```
* run ig publisher and view output
## Setting up the CI build
* https://github.com/FHIR/auto-ig-builder
* add .index.json to .gitignore
* check-in and sync
* in github.com, go to settings/webhooks, select add webhook
  * payload: https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger
  * content: application/json
* edit a file in github, commit, and see it build on the CI build
## History
* https://github.com/HL7/fhir-ig-history-template
