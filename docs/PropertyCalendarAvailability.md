# ExpediaRapid::PropertyCalendarAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **String** | Expedia property ID. | [optional] |
| **days** | [**Array&lt;GetCalendarAvailability200ResponseInnerDaysInner&gt;**](GetCalendarAvailability200ResponseInnerDaysInner.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PropertyCalendarAvailability.new(
  property_id: 123456,
  days: null
)
```

