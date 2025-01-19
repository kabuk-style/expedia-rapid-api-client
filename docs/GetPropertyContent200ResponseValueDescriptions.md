# ExpediaRapid::GetPropertyContent200ResponseValueDescriptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amenities** | **String** | Describes general building amenities at the property. | [optional] |
| **dining** | **String** | Describes dining accommodations at the property. | [optional] |
| **renovations** | **String** | Describes any recent room or property renovations. | [optional] |
| **national_ratings** | **String** | States the source of the property&#39;s star rating (such as a regional or national tourism agency) and any other ratings claimed. | [optional] |
| **business_amenities** | **String** | Describes any business-specific amenities at the property, e.g. conference rooms. | [optional] |
| **rooms** | **String** | Describes typical room amenities. | [optional] |
| **attractions** | **String** | Nearby attractions/areas, often including distances from the property. | [optional] |
| **location** | **String** | General location as entered by the property. | [optional] |
| **headline** | **String** | A headline description for the property. | [optional] |
| **general** | **String** | A general description of a vacation rental property. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueDescriptions.new(
  amenities: null,
  dining: null,
  renovations: null,
  national_ratings: null,
  business_amenities: null,
  rooms: null,
  attractions: null,
  location: null,
  headline: null,
  general: null
)
```

