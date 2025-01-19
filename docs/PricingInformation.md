# ExpediaRapid::PricingInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nightly** | **Array&lt;Array&lt;GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueNightlyInnerInner&gt;&gt;** | Array of arrays of amount objects. Each sub-array of amount objects represents a single night&#39;s charges. | [optional] |
| **stay** | [**Array&lt;GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueStayInner&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueStayInner.md) | Array of amount objects. Details any charges that apply to the entire stay (not divided per-night). Any per-room adjustments are applied to the &#x60;base_rate&#x60; amount within this object. | [optional] |
| **totals** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotals**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotals.md) |  | [optional] |
| **fees** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueFees**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueFees.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PricingInformation.new(
  nightly: null,
  stay: null,
  totals: null,
  fees: null
)
```

