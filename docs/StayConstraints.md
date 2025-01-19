# ExpediaRapid::StayConstraints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_stay** | **Integer** | The minimum number of days for a stay. | [optional] |
| **max_stay** | **Integer** | The maximum number of days for a stay. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::StayConstraints.new(
  min_stay: 1,
  max_stay: 14
)
```

