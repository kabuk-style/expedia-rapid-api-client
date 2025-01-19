# ExpediaRapid::PostItineraryRequestRoomsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **given_name** | **String** | First name of room guest. Max 60 characters. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **family_name** | **String** | Last name of room guest. Max 60 characters. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **smoking** | **Boolean** | Specify if the guest would prefer a smoking room. This field is only a request and the property is not guaranteed to honor it, it will not override any non-smoking policies by the hotel. | [optional] |
| **special_request** | **String** | Special requests to send to hotel (not guaranteed). Do not use this field to communicate B2B customer service requests or pass any sensitive personal or financial information (PII). Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. | [optional] |
| **loyalty_id** | **String** | Deprecated. Please use the loyalty id inside the loyalty object. | [optional] |
| **loyalty** | [**GetReservation200ResponseInnerRoomsInnerLoyalty**](GetReservation200ResponseInnerRoomsInnerLoyalty.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostItineraryRequestRoomsInner.new(
  given_name: null,
  family_name: null,
  smoking: null,
  special_request: null,
  loyalty_id: null,
  loyalty: null
)
```

