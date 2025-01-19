# ExpediaRapid::Dates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **added** | **String** | The UTC date the property’s content was added to EPS, in ISO 8601 format | [optional] |
| **updated** | **String** | The UTC date the property’s content was updated by EPS, in ISO 8601 format. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Dates.new(
  added: null,
  updated: null
)
```

