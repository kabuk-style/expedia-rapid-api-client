# ExpediaRapid::PriceCheck200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Indicates the status of the rate. If the rate is still available then available will be returned. If the rate is no longer available at that price then price_changed will be returned. If the rate is no longer available at all then sold_out will be returned. | [optional] |
| **occupancy_pricing** | [**Hash&lt;String, GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue.md) | A map of room information by occupancy. | [optional] |
| **links** | [**PriceCheck200ResponseLinks**](PriceCheck200ResponseLinks.md) |  | [optional] |
| **card_on_file_limit** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **refundable_damage_deposit** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **deposits** | [**Array&lt;GetAvailability200ResponseInnerRoomsInnerRatesInnerDepositsInner&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInnerDepositsInner.md) | Array of deposits. | [optional] |
| **refund** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **amount_owed** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **penalty** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **trader_information** | [**PriceCheck200ResponseTraderInformation**](PriceCheck200ResponseTraderInformation.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PriceCheck200Response.new(
  status: null,
  occupancy_pricing: null,
  links: null,
  card_on_file_limit: null,
  refundable_damage_deposit: null,
  deposits: null,
  refund: null,
  amount_owed: null,
  penalty: null,
  trader_information: null
)
```

