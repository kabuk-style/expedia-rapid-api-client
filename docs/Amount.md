# ExpediaRapid::Amount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value of the amount object. Decimal point inline with correct precision. | [optional] |
| **currency** | **String** | Currency of the amount object. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Amount.new(
  value: null,
  currency: null
)
```

