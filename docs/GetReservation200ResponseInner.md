# ExpediaRapid::GetReservation200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **itinerary_id** | **String** | The itinerary id. | [optional] |
| **property_id** | **String** | The property id. | [optional] |
| **links** | [**GetReservation200ResponseInnerLinks**](GetReservation200ResponseInnerLinks.md) |  | [optional] |
| **email** | **String** | Email address for the customer. | [optional] |
| **phone** | [**GetReservation200ResponseInnerPhone**](GetReservation200ResponseInnerPhone.md) |  | [optional] |
| **rooms** | [**Array&lt;GetReservation200ResponseInnerRoomsInner&gt;**](GetReservation200ResponseInnerRoomsInner.md) |  | [optional] |
| **billing_contact** | [**GetReservation200ResponseInnerBillingContact**](GetReservation200ResponseInnerBillingContact.md) |  | [optional] |
| **adjustment** | [**GetReservation200ResponseInnerAdjustment**](GetReservation200ResponseInnerAdjustment.md) |  | [optional] |
| **creation_date_time** | **String** | The creation date/time of the booking. | [optional] |
| **affiliate_reference_id** | **String** | Your unique reference value. This field supports from 3 to a maximum of 28 characters. | [optional] |
| **affiliate_metadata** | **String** | Field that stores up to 256 characters of additional metadata with the itinerary, uniqueness is not required. | [optional] |
| **conversations** | [**GetReservation200ResponseInnerConversations**](GetReservation200ResponseInnerConversations.md) |  | [optional] |
| **trader_information** | [**PriceCheck200ResponseTraderInformation**](PriceCheck200ResponseTraderInformation.md) |  | [optional] |
| **essential_information** | [**GetReservation200ResponseInnerEssentialInformation**](GetReservation200ResponseInnerEssentialInformation.md) |  | [optional] |
| **travel_purpose** | **String** | Value potentially passed in during the availability request to indicate the purpose of the trip designated by the traveler.  | [optional] |
| **itinerary_history** | [**Array&lt;GetReservation200ResponseInnerItineraryHistoryInner&gt;**](GetReservation200ResponseInnerItineraryHistoryInner.md) |  | [optional] |
| **room_history** | **Array&lt;Array&lt;GetReservation200ResponseInnerRoomHistoryInnerInner&gt;&gt;** | An array of rooms each containing an array of room history events. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInner.new(
  itinerary_id: null,
  property_id: null,
  links: null,
  email: null,
  phone: null,
  rooms: null,
  billing_contact: null,
  adjustment: null,
  creation_date_time: null,
  affiliate_reference_id: null,
  affiliate_metadata: null,
  conversations: null,
  trader_information: null,
  essential_information: null,
  travel_purpose: null,
  itinerary_history: null,
  room_history: null
)
```

