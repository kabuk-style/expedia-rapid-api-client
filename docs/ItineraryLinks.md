# ExpediaRapid::ItineraryLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resume** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **cancel** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **non_vat_expedia_invoice** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::ItineraryLinks.new(
  resume: null,
  cancel: null,
  non_vat_expedia_invoice: null
)
```

