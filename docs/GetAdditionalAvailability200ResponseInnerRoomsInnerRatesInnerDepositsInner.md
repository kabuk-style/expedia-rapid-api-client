# ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerDepositsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The amount that must be paid as a deposit. | [optional] |
| **due** | **String** | The due date in ISO 8601 format. | [optional] |
| **currency** | **String** | The currency for the deposit amount. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerDepositsInner.new(
  value: null,
  due: null,
  currency: null
)
```

