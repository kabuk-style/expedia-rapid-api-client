# ExpediaRapid::AllInclusive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all_rate_plans** | **Boolean** | Indicates if all rate plans at the property provide all-inclusive amenities. | [optional] |
| **some_rate_plans** | **Boolean** | Indicates if some, but not all, rate plans at the property provide all-inclusive amenities. | [optional] |
| **details** | **String** | Details about amenities and services included in the all-inclusive rates. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::AllInclusive.new(
  all_rate_plans: null,
  some_rate_plans: null,
  details: null
)
```

