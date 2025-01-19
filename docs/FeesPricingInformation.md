# ExpediaRapid::FeesPricingInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mandatory_fee** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **resort_fee** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **mandatory_tax** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::FeesPricingInformation.new(
  mandatory_fee: null,
  resort_fee: null,
  mandatory_tax: null
)
```

