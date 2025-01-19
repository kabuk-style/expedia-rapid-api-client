# ExpediaRapid::RequestUndeliveredNotifications200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Unique identifier for each message | [optional] |
| **event_type** | **String** | An indication of what event caused the notification. This value can be used for message handling and routing. Refer to the list of event types for more information. | [optional] |
| **event_time** | **String** | Timestamp of the event notification, in UTC | [optional] |
| **itinerary_id** | **String** | The Itinerary ID of the affected booking | [optional] |
| **email** | **String** | The customer e-mail address associated with the affected itinerary | [optional] |
| **message** | **String** | Description of event notification | [optional] |
| **affiliate_reference_id** | **String** | The Affiliate Reference ID of the affected booking | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::RequestUndeliveredNotifications200ResponseInner.new(
  event_id: null,
  event_type: null,
  event_time: null,
  itinerary_id: null,
  email: null,
  message: null,
  affiliate_reference_id: null
)
```

