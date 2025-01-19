# ExpediaRapid::PropertyUnavailabilityUnavailableReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code representing the reason. * &#x60;adults_exceed_threshold&#x60; - Number of adults requested exceeds room threshold. &#x60;data&#x60; will contain the maximum value. * &#x60;children_exceed_threshold&#x60; - Number of children requested exceeds room threshold. &#x60;data&#x60; will contain the maximum value. * &#x60;infants_exceed_threshold&#x60; - Number of infants requested exceeds room threshold. &#x60;data&#x60; will contain the maximum value. * &#x60;minimum_child_age&#x60; - Child age requested is less than the minimum age specified for the room. &#x60;data&#x60; will contain the minimum value. * &#x60;maximum_occupancy&#x60; - Number of occupants exceed the specified room limit. &#x60;data&#x60; will contain the maximum value. * &#x60;checkin_not_allowed&#x60; - Check-in not allowed for this stay date. * &#x60;checkout_not_allowed&#x60; - Check-out not allowed for this stay date. * &#x60;minimum_stay&#x60; - Length of stay is less than minimum. &#x60;data&#x60; will contain the minimum value. * &#x60;maximum_stay&#x60; - Length of stay is greater than maximum. &#x60;data&#x60; will contain the maximum value. * &#x60;restricted_stay_lengths&#x60; - Some stay lengths are not available for this check-in date. &#x60;data&#x60; will contain the allowed lengths separated by pipe &#x60;|&#x60;. eg. &#x60;3|5|6&#x60; * &#x60;same_day_restrictions&#x60; - Room is not available due to same day booking restrictions. * &#x60;maximum_rooms&#x60; - Room count exceeds provider limit. &#x60;data&#x60; will contain the maximum value. * &#x60;children_not_supported&#x60; - The property is restricted to adults only. * &#x60;minimum_advance_purchase&#x60; - Minimum Advance Purchase requirement not met. &#x60;data&#x60; will contain the minimum value. * &#x60;maximum_advance_purchase&#x60; - Maximum Advance Purchase requirement not met. &#x60;data&#x60; will contain the maximum value. * &#x60;partial_inventory_available&#x60; - Some of the dates have no inventory available for the specified duration. &#x60;data&#x60; will contain the unavailable dates separated by pipe &#x60;|&#x60;. eg. &#x60;2023-10-21|2023-10-23&#x60; * &#x60;no_inventory_available&#x60; - No inventory is available for the specified duration.  | [optional] |
| **data** | **String** | An associated value that provides helpful information for some codes. Not present for all codes. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PropertyUnavailabilityUnavailableReason.new(
  code: null,
  data: null
)
```

