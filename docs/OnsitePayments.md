# ExpediaRapid::OnsitePayments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The currency accepted at the property. | [optional] |
| **types** | [**Hash&lt;String, GetPropertyContent200ResponseValueOnsitePaymentsTypesValue&gt;**](GetPropertyContent200ResponseValueOnsitePaymentsTypesValue.md) | The types of payments accepted at the property. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::OnsitePayments.new(
  currency: null,
  types: null
)
```

