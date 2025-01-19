# ExpediaRapid::GetReservation200ResponseInnerRoomsInnerRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the rate. | [optional] |
| **merchant_of_record** | **String** | * &#x60;expedia&#x60; - Payment is taken by Expedia. * &#x60;property&#x60; - Payment is taken by the property.  | [optional] |
| **refundable** | **Boolean** | Indicates whether the itinerary is refundable or not. | [optional] |
| **cancel_refund** | [**GetReservation200ResponseInnerRoomsInnerRateCancelRefund**](GetReservation200ResponseInnerRoomsInnerRateCancelRefund.md) |  | [optional] |
| **amenities** | **Array&lt;String&gt;** |  | [optional] |
| **promotions** | [**GetReservation200ResponseInnerRoomsInnerRatePromotions**](GetReservation200ResponseInnerRoomsInnerRatePromotions.md) |  | [optional] |
| **cancel_penalties** | [**Array&lt;GetAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner.md) | The cancel penalties associated with the itinerary. | [optional] |
| **nonrefundable_date_ranges** | [**Array&lt;GetAvailability200ResponseInnerRoomsInnerRatesInnerNonrefundableDateRangesInner&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInnerNonrefundableDateRangesInner.md) | A list of date exceptions. Dates within these ranges provide no refund on cancellation, regardless of cancel penalty windows. Nonrefundable range begins at 00:00:00 on the start date, and ends at 23:59:59 on the end date, in the local time zone of the property.  | [optional] |
| **deposits** | [**Array&lt;GetReservation200ResponseInnerRoomsInnerRateDepositsInner&gt;**](GetReservation200ResponseInnerRoomsInnerRateDepositsInner.md) |  | [optional] |
| **card_on_file_limit** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **refundable_damage_deposit** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **pricing** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInnerRoomsInnerRate.new(
  id: null,
  merchant_of_record: null,
  refundable: null,
  cancel_refund: null,
  amenities: null,
  promotions: null,
  cancel_penalties: null,
  nonrefundable_date_ranges: null,
  deposits: null,
  card_on_file_limit: null,
  refundable_damage_deposit: null,
  pricing: null
)
```

