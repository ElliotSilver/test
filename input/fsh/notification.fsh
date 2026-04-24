
Instance: MyTopicSubscription
InstanceOf: BackportSubscription
Usage: #example
* id = "MyTopicSubscription"
* status = #requested
* reason = "Example subscription"
* criteria = "http://example.com/fhir/SubscriptionTopic/MyTopic"
* channel
  * type = http://hl7.org/fhir/subscription-channel-type#rest-hook
  * payload = urn:ietf:bcp:13#application/fhir+json
    * extension[content].valueCode = #full-resource


Instance: SubscriptionStatusHandshakeExample
InstanceOf: BackportSubscriptionStatusR4
Usage: #inline
* parameter[subscription]
  * name = "subscription"
  * valueReference = Reference(MyTopicSubscription)
* parameter[topic]
  * name = "topic"
  * valueCanonical = "http://example.com/fhir/SubscriptionTopic/MyTopic"
* parameter[status]
  * name = "status"
  * valueCode = http://hl7.org/fhir/subscription-status#requested
* parameter[type]
  * name = "type"
  * valueCode = http://hl7.org/fhir/subscription-notification-type#handshake

Instance: NotificationHandshakeExample
InstanceOf: BackportSubscriptionNotificationR4
Title: "Subscription Notification (Handshake) Example"
Description: """
  Example instance of a handshake [[[http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription-notification-r4]]].
  """
Usage: #example
* id = "NotificationHandshakeExample"
* type = #history
* entry[subscriptionStatus]
  * fullUrl = "urn:uuid:1fec18a1-f5e7-4416-9887-0b1010c89f85"
  * resource = SubscriptionStatusHandshakeExample
  * request
    * method = #POST
    * url = "https://example.org/fhir/Subscription/MyTopicSubscription/$status"
  * response
    * status = "200 OK"

