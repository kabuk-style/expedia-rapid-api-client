# ExpediaRapid::GetReservation200ResponseInnerRoomHistoryInnerInnerRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the rate. | [optional] |
| **promotions** | [**GetReservation200ResponseInnerRoomsInnerRatePromotions**](GetReservation200ResponseInnerRoomsInnerRatePromotions.md) |  | [optional] |
| **cancel_penalties** | [**Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner.md) | The cancel penalties associated with the itinerary. | [optional] |
| **deposits** | [**Array&lt;GetReservation200ResponseInnerRoomsInnerRateDepositsInner&gt;**](GetReservation200ResponseInnerRoomsInnerRateDepositsInner.md) |  | [optional] |
| **pricing** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInnerRoomHistoryInnerInnerRate.new(
  id: null,
  promotions: null,
  cancel_penalties: null,
  deposits: null,
  pricing: null
)
```

