# ExpediaRapid::Localized

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**Hash&lt;String, GetPropertyContent200ResponseValueAddressLocalizedLinksValue&gt;**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) | Keyed by the language, a map of links to the property’s localized address(es) based on the primary language(s) spoken in the property’s country. Only languages supported by the Rapid API are provided. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Localized.new(
  links: null
)
```

