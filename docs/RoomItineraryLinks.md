# ExpediaRapid::RoomItineraryLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancel** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **change** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |
| **shop_for_change** | [**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::RoomItineraryLinks.new(
  cancel: null,
  change: null,
  shop_for_change: null
)
```

