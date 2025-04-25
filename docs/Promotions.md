# ExpediaRapid::Promotions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_adds** | [**Hash&lt;String, GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsValueAddsValue&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsValueAddsValue.md) | A collection of value adds that apply to this rate. | [optional] |
| **deal** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsDeal**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotionsDeal.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Promotions.new(
  value_adds: null,
  deal: null
)
```

