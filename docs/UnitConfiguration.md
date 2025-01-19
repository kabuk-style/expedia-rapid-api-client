# ExpediaRapid::UnitConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Bed type. | [optional] |
| **description** | **String** | A description of the bed(s) in requested language. | [optional] |
| **quantity** | **Integer** | The number of beds of this size. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::UnitConfiguration.new(
  type: null,
  description: null,
  quantity: null
)
```

