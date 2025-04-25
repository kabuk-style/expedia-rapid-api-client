# ExpediaRapid::Rate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Identifier for a rate. | [optional] |
| **status** | **String** | Indicates the status of the rate. If the rate is still available then available will be returned. If the rate is no longer available at that price then price_changed will be returned. If the rate is no longer available at all then sold_out will be returned. | [optional] |
| **available_rooms** | **Float** | The number of bookable rooms remaining with this rate in EPS inventory. Use this value to create rules for urgency messaging to alert users to low availability on busy travel dates or at popular properties. If the value returns as 2147483647 (max int value), the actual value could not be determined. Ensure your urgency messaging ignores such instances when returned. | [optional] |
| **refundable** | **Boolean** | Indicates if the rate is fully refundable at the time of booking. Cancel penalties may still apply. Please refer to the cancel penalties section for reference. | [optional] |
| **current_refundability** | **String** | Indicates the current refundability of the rate. This is a more detailed version of the &#x60;refundable&#x60; field. | [optional] |
| **member_deal_available** | **Boolean** | Indicates if a \&quot;Member Only Deal\&quot; is available for this rate. | [optional] |
| **sale_scenario** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerSaleScenario**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerSaleScenario.md) |  | [optional] |
| **merchant_of_record** | **String** | * &#x60;expedia&#x60; - Payment is taken by Expedia. * &#x60;property&#x60; - Payment is taken by the property.  | [optional] |
| **amenities** | [**Hash&lt;String, GetPropertyContent200ResponseValueAmenitiesValue&gt;**](GetPropertyContent200ResponseValueAmenitiesValue.md) | Room amenities. | [optional] |
| **links** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerLinks**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerLinks.md) |  | [optional] |
| **bed_groups** | [**Hash&lt;String, GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerBedGroupsValue&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerBedGroupsValue.md) | A map of the room&#39;s bed groups. | [optional] |
| **cancel_penalties** | [**Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner.md) | Array of &#x60;cancel_penalty&#x60; objects containing cancel penalty information. | [optional] |
| **nonrefundable_date_ranges** | [**Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerNonrefundableDateRangesInner&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerNonrefundableDateRangesInner.md) | An array of stay date ranges within this check-in / check-out range that are not refundable. Stay dates within these ranges provide no refund on cancellation, regardless of cancel penalty windows. The stay dates are determined by the would be check-in of that night. With a check-in date of 2023-09-01, and a check-out date of 2023-09-06, this would be a 5 night stay. A &#x60;nonrefundable_date_range&#x60; with start: 2023-09-02 and end: 2023-09-03 would mean 2 of the nights are nonrefundable. The 1st night is refundable, the 2nd and 3rd nights are nonrefundable, and the 4th and 5th nights are refundable, subject to &#x60;cancel_penalties&#x60; restrictions.  | [optional] |
| **marketing_fee_incentives** | [**Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerMarketingFeeIncentivesInner&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerMarketingFeeIncentivesInner.md) | An array of stay date ranges within this check-in / check-out range that have an incentive applied. The stay dates are determined by the would be check-in of that night. With a check-in date of 2023-09-01, and a check-out date of 2023-09-06, this would be a 5 night stay. A &#x60;marketing_fee_incentive&#x60; with start: 2023-09-02 and end: 2023-09-03 would mean 2 of the nights have an incentive applied. The 1st night is not part of the incentive, the 2nd and 3rd nights are part of the incentive, and the 4th and 5th nights are not part of the incentive.  | [optional] |
| **occupancy_pricing** | [**Hash&lt;String, GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValue.md) | A map of room information by occupancy. | [optional] |
| **promotions** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotions**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerPromotions.md) |  | [optional] |
| **card_on_file_limit** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **refundable_damage_deposit** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **deposits** | [**Array&lt;GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerDepositsInner&gt;**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerDepositsInner.md) | Array of deposits for the rate. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Rate.new(
  id: null,
  status: null,
  available_rooms: null,
  refundable: null,
  current_refundability: null,
  member_deal_available: null,
  sale_scenario: null,
  merchant_of_record: null,
  amenities: null,
  links: null,
  bed_groups: null,
  cancel_penalties: null,
  nonrefundable_date_ranges: null,
  marketing_fee_incentives: null,
  occupancy_pricing: null,
  promotions: null,
  card_on_file_limit: null,
  refundable_damage_deposit: null,
  deposits: null
)
```

