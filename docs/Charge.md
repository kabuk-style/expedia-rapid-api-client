# ExpediaRapid::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable_currency** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **request_currency** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Charge.new(
  billable_currency: null,
  request_currency: null
)
```

