# ExpediaRapid::GetReservation200ResponseInnerRoomsInnerLoyalty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | The identifier for the individual associated with a loyalty program. | [optional] |
| **program_id** | **String** | The identifier for the loyalty program. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInnerRoomsInnerLoyalty.new(
  member_id: ABC123,
  program_id: SN
)
```

