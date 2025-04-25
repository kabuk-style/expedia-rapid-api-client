# ExpediaRapid::PromotionsItinerary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_adds** | [**Hash&lt;String, GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsValueAddsValue&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsValueAddsValue.md) | Promotions provided by the property that add value to the stay, but don’t affect the booking price (i.e., ski lift tickets or premium wifi). | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PromotionsItinerary.new(
  value_adds: null
)
```

