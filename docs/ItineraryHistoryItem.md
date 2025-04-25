# ExpediaRapid::ItineraryHistoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **history_id** | **String** | Itinerary history id for particular change. | [optional] |
| **event_timestamp** | **String** | Date and time in UTC of the change event, in extended ISO 8601 format. | [optional] |
| **event_type** | **String** |  | [optional] |
| **amount** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **agent_id** | **Integer** | An agent user id number associated with a modification. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::ItineraryHistoryItem.new(
  history_id: null,
  event_timestamp: null,
  event_type: null,
  amount: null,
  agent_id: null
)
```

