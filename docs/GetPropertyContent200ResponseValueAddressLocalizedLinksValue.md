# ExpediaRapid::GetPropertyContent200ResponseValueAddressLocalizedLinksValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The request method used to access the link. | [optional] |
| **href** | **String** | The URL for the link. This can be absolute or relative. | [optional] |
| **expires** | **String** | If the link expires, this will be the UTC date the link will expire, in ISO 8601 format. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueAddressLocalizedLinksValue.new(
  method: null,
  href: null,
  expires: null
)
```

