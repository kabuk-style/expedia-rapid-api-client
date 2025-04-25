# ExpediaRapid::AttributeReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The attribute definition ID for this attribute. | [optional] |
| **name** | **String** | Attribute name. | [optional] |
| **has_value** | **Boolean** | Indicates whether an attribute will have an associated numeric value. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::AttributeReference.new(
  id: null,
  name: null,
  has_value: null
)
```

