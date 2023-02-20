Instance: device1
InstanceOf: Device
Usage: #example
Title: "device1"
Description: "Device 1"
* identifier[+]
  * system = "http://example.org/identifier"
  * value = "1234"

Instance: observation1
InstanceOf: Observation
Description: "Observation 1"
Usage: #example
* code = http://example.org/obs-code#obs1
* status = http://hl7.org/fhir/observation-status#preliminary
* device = Reference(Device?identifier=1234)
* valueQuantity = 1.0 'cm'

Instance: bundle
InstanceOf: Bundle
Description: "submission bundle"
Usage: #example
* type = http://hl7.org/fhir/bundle-type#transaction
* entry[+]
  * resource = observation1
  * fullUrl = "http://example.org/Observation/observation1"
  * request
    * method = http://hl7.org/fhir/http-verb#POST
    * url = "Observation"
 