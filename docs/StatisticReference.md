# ExpediaRapid::StatisticReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The statistic definition ID for this statistic. | [optional] |
| **name** | **String** | Statistic name. | [optional] |
| **has_value** | **Boolean** | Indicates whether a statistic will have an associated numeric value. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::StatisticReference.new(
  id: null,
  name: null,
  has_value: null
)
```

