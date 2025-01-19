# ExpediaRapid::PropertyUnavailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **String** | Expedia property ID. | [optional] |
| **status** | **String** | Helps determine which type of property response is returned. | [optional] |
| **score** | **Float** | A score to sort properties where the higher the value the better. It can be used to:&lt;br&gt; * Sort the properties on the response&lt;br&gt; * Sort properties across multiple responses in parallel searches for large regions&lt;br&gt; | [optional] |
| **unavailable_reason** | [**PropertyUnavailabilityUnavailableReason**](PropertyUnavailabilityUnavailableReason.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PropertyUnavailability.new(
  property_id: null,
  status: null,
  score: null,
  unavailable_reason: null
)
```

