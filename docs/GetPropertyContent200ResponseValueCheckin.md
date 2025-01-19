# ExpediaRapid::GetPropertyContent200ResponseValueCheckin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_24_hour** | **String** | Present if the property has 24-hour check-in. | [optional] |
| **begin_time** | **String** | The time at which a property begins to allow check-ins. | [optional] |
| **end_time** | **String** | The time at which a property stops allowing check-ins. | [optional] |
| **instructions** | **String** | The property&#39;s check-in policy. | [optional] |
| **special_instructions** | **String** | Any special instructions for checking into this property that may be specific to this property. | [optional] |
| **min_age** | **Float** | The minimum age for a customer to be able to check-in at a property. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueCheckin.new(
  _24_hour: null,
  begin_time: null,
  end_time: null,
  instructions: null,
  special_instructions: null,
  min_age: null
)
```

