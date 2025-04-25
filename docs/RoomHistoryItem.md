# ExpediaRapid::RoomHistoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **history_id** | **String** | Room history id for particular change. | [optional] |
| **event_timestamp** | **String** | Date and time in UTC of the change event, in extended ISO 8601 format. | [optional] |
| **event_type** | **String** | Type of event associated with this history item such as modified or canceled. If the booking is marked as a no-show by the property/supplier, the value of event_type is &#x60;canceled&#x60; when the &#x60;include&#x60; request parameter is &#x60;history&#x60;. However, it is &#x60;canceled_no_show&#x60; when the &#x60;include&#x60; request parameter is &#x60;history_v2&#x60;. | [optional] |
| **event_source** | **String** | The source of the event. If &#x60;voyager_agent&#x60;, &#x60;agent_id&#x60; will be supplied. If the event source is property/supplier, the value of event_source is &#x60;other&#x60; when the &#x60;include&#x60; request parameter is &#x60;history&#x60;. However, it is &#x60;supplier&#x60; when the &#x60;include&#x60; request parameter is &#x60;history_v2&#x60;. | [optional] |
| **change_reference_id** | **String** | Optional identifier provided during changes via Rapid. | [optional] |
| **agent_id** | **Integer** | An agent user id number associated with a modification. | [optional] |
| **room_id** | **String** | The room id. | [optional] |
| **confirmation_id** | [**GetReservation200ResponseInnerRoomsInnerConfirmationId**](GetReservation200ResponseInnerRoomsInnerConfirmationId.md) |  | [optional] |
| **bed_group_id** | **String** | Unique identifier for a bed type. | [optional] |
| **checkin** | **String** | The check-in date of the itinerary. | [optional] |
| **checkout** | **String** | The check-out date of the itinerary. | [optional] |
| **number_of_adults** | **Float** | The number of adults staying in the room. | [optional] |
| **child_ages** | **Array&lt;Float&gt;** | The ages of children for the room. | [optional] |
| **given_name** | **String** | The first name of the main guest staying in the room. | [optional] |
| **family_name** | **String** | The last name of the main guest staying in the room. | [optional] |
| **status** | **String** | The booking status of the room. | [optional] |
| **special_request** | **String** | Any special request info associated with the room. | [optional] |
| **smoking** | **Boolean** | Indicates if the room is smoking or non-smoking. | [optional] |
| **loyalty_id** | **String** | A loyalty identifier for a hotel loyalty program associated with this room guest. | [optional] |
| **amount_charged** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **amount_refunded** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **penalty** | [**GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive**](GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusive.md) |  | [optional] |
| **rate** | [**GetReservation200ResponseInnerRoomHistoryInnerInnerRate**](GetReservation200ResponseInnerRoomHistoryInnerInnerRate.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::RoomHistoryItem.new(
  history_id: null,
  event_timestamp: null,
  event_type: null,
  event_source: null,
  change_reference_id: null,
  agent_id: null,
  room_id: null,
  confirmation_id: null,
  bed_group_id: null,
  checkin: null,
  checkout: null,
  number_of_adults: null,
  child_ages: null,
  given_name: null,
  family_name: null,
  status: null,
  special_request: null,
  smoking: null,
  loyalty_id: null,
  amount_charged: null,
  amount_refunded: null,
  penalty: null,
  rate: null
)
```

