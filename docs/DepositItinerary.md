# ExpediaRapid::DepositItinerary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The currency of the deposit. | [optional] |
| **value** | **String** | The amount required as deposit. | [optional] |
| **due** | **String** | The due date/time of the deposit. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::DepositItinerary.new(
  currency: null,
  value: null,
  due: null
)
```

