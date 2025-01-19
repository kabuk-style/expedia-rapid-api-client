# ExpediaRapid::RoomAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Identifier for a room type. | [optional] |
| **room_name** | **String** | Name of the room type. | [optional] |
| **rates** | [**Array&lt;GetAvailability200ResponseInnerRoomsInnerRatesInner&gt;**](GetAvailability200ResponseInnerRoomsInnerRatesInner.md) | Array of objects containing rate information. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::RoomAvailability.new(
  id: null,
  room_name: null,
  rates: null
)
```

