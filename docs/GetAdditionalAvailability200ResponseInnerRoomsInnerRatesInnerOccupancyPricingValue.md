# ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nightly** | **Array&lt;Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueNightlyInnerInner&gt;&gt;** | Array of arrays of amount objects. Each sub-array of amount objects represents a single night&#39;s charges. | [optional] |
| **stay** | [**Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueStayInner&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueStayInner.md) | Array of amount objects. Details any charges that apply to the entire stay (not divided per-night). Any per-room adjustments are applied to the &#x60;base_rate&#x60; amount within this object. | [optional] |
| **totals** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotals**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotals.md) |  | [optional] |
| **fees** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueFees**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueFees.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue.new(
  nightly: null,
  stay: null,
  totals: null,
  fees: null
)
```

