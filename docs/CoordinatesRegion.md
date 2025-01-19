# ExpediaRapid::CoordinatesRegion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **center_longitude** | **Float** | Center Longitude. | [optional] |
| **center_latitude** | **Float** | Center Latitude. | [optional] |
| **bounding_polygon** | [**GetRegions200ResponseInnerCoordinatesBoundingPolygon**](GetRegions200ResponseInnerCoordinatesBoundingPolygon.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::CoordinatesRegion.new(
  center_longitude: null,
  center_latitude: null,
  bounding_polygon: null
)
```

