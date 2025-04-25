# ExpediaRapid::FeesPricingInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mandatory_fee** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **resort_fee** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **mandatory_tax** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::FeesPricingInformation.new(
  mandatory_fee: null,
  resort_fee: null,
  mandatory_tax: null
)
```

