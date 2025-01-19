# ExpediaRapid::GetAvailability200ResponseInnerRoomsInnerRatesInnerPromotions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_adds** | [**Hash&lt;String, GetAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsValueAddsValue&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsValueAddsValue.md) | A collection of value adds that apply to this rate. | [optional] |
| **deal** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsDeal**](GetAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsDeal.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetAvailability200ResponseInnerRoomsInnerRatesInnerPromotions.new(
  value_adds: null,
  deal: null
)
```

