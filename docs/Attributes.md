# ExpediaRapid::Attributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **general** | [**Hash&lt;String, GetPropertyContent200ResponseValueAttributesGeneralValue&gt;**](GetPropertyContent200ResponseValueAttributesGeneralValue.md) | Lists all of the general attributes about the property. | [optional] |
| **pets** | [**Hash&lt;String, GetPropertyContent200ResponseValueAttributesGeneralValue&gt;**](GetPropertyContent200ResponseValueAttributesGeneralValue.md) | Lists all of the pet attributes about the property. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Attributes.new(
  general: null,
  pets: null
)
```

