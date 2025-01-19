# ExpediaRapid::ItineraryCreationLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retrieve** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **resume** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **complete_payment_session** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **cancel** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::ItineraryCreationLinks.new(
  retrieve: null,
  resume: null,
  complete_payment_session: null,
  cancel: null
)
```

