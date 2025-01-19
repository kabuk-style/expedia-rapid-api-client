# ExpediaRapid::ValueAdd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the value add promotion. | [optional] |
| **description** | **String** | A localized description of the value add promotion. | [optional] |
| **category** | **String** | The general category that this value add promotion falls into. | [optional] |
| **offer_type** | **String** | The type of offer this value add promotion is. | [optional] |
| **frequency** | **String** | The frequency of when this applies. | [optional] |
| **person_count** | **Float** | Indicates how many guests the value add promotion applies to. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::ValueAdd.new(
  id: null,
  description: null,
  category: null,
  offer_type: null,
  frequency: null,
  person_count: null
)
```

