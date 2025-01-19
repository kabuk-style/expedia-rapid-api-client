# ExpediaRapid::Stay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The price breakout type. | [optional] |
| **value** | **String** | The value of the amount object. Decimal point inline with correct precision. | [optional] |
| **currency** | **String** | Currency of the amount object. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Stay.new(
  type: null,
  value: null,
  currency: null
)
```

