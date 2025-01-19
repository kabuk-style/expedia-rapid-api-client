# ExpediaRapid::GetPropertyContent200ResponseValueRatingsGuest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Float** | A count of all of the guest review ratings which currently exist for this property. | [optional] |
| **overall** | **String** | The overall rating for the property, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **cleanliness** | **String** | The cleanliness rating for the property, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **service** | **String** | The rating of the staff&#39;s service for the property, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **comfort** | **String** | The comfort rating of the rooms, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **condition** | **String** | The rating for the property&#39;s condition, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **location** | **String** | The rating for how convinent the location of the property is, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **neighborhood** | **String** | The rating for how satisfying the neighborhood of the property is, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **quality** | **String** | The quality rating of the rooms, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **value** | **String** | The rating for how much value the property provided for the cost of the stay, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **amenities** | **String** | The rating for the amenities provided by the property, averaged from all guest reviews. Returns a value between 1.0 and 5.0. | [optional] |
| **recommendation_percent** | **String** | The percent of guests who recommend staying at this property. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueRatingsGuest.new(
  count: null,
  overall: null,
  cleanliness: null,
  service: null,
  comfort: null,
  condition: null,
  location: null,
  neighborhood: null,
  quality: null,
  value: null,
  amenities: null,
  recommendation_percent: null
)
```

