# ExpediaRapid::GetPropertyContent200ResponseValueFees

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mandatory** | **String** | Describes resort fees and other mandatory taxes or charges. May describe which services are covered by any fees, such as fitness centers or internet access. | [optional] |
| **optional** | **String** | Describes additional optional fees for items such as breakfast, wifi, parking, pets etc. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueFees.new(
  mandatory: null,
  optional: null
)
```

