# ExpediaRapid::RoomItinerary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The room id. | [optional] |
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
| **loyalty_id** | **String** | Deprecated. Please use the loyalty id inside the loyalty object. | [optional] |
| **loyalty** | [**GetReservation200ResponseInnerRoomsInnerLoyalty**](GetReservation200ResponseInnerRoomsInnerLoyalty.md) |  | [optional] |
| **rate** | [**GetReservation200ResponseInnerRoomsInnerRate**](GetReservation200ResponseInnerRoomsInnerRate.md) |  | [optional] |
| **links** | [**GetReservation200ResponseInnerRoomsInnerLinks**](GetReservation200ResponseInnerRoomsInnerLinks.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::RoomItinerary.new(
  id: null,
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
  loyalty: null,
  rate: null,
  links: null
)
```

