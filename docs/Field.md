# ExpediaRapid::Field

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The field that had an error. | [optional] |
| **type** | **String** | The type of the field that had an error. | [optional] |
| **value** | **String** | The value of the field that had an error. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Field.new(
  name: null,
  type: null,
  value: null
)
```

