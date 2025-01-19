# ExpediaRapid::GetPropertyContent200ResponseValueRoomsValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for a room type. | [optional] |
| **name** | **String** | Room type name. | [optional] |
| **descriptions** | [**GetPropertyContent200ResponseValueRoomsValueDescriptions**](GetPropertyContent200ResponseValueRoomsValueDescriptions.md) |  | [optional] |
| **amenities** | [**Hash&lt;String, GetPropertyContent200ResponseValueAmenitiesValue&gt;**](GetPropertyContent200ResponseValueAmenitiesValue.md) | Lists all of the amenities available in the room. See our [amenities reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known amenity ID and name values. | [optional] |
| **images** | [**Array&lt;GetPropertyContent200ResponseValueImagesInner&gt;**](GetPropertyContent200ResponseValueImagesInner.md) | The room&#39;s images. Contains all room images available. | [optional] |
| **bed_groups** | [**Hash&lt;String, GetPropertyContent200ResponseValueRoomsValueBedGroupsValue&gt;**](GetPropertyContent200ResponseValueRoomsValueBedGroupsValue.md) | A map of the room&#39;s bed groups. | [optional] |
| **area** | [**GetPropertyContent200ResponseValueRoomsValueArea**](GetPropertyContent200ResponseValueRoomsValueArea.md) |  | [optional] |
| **views** | [**Hash&lt;String, GetPropertyContent200ResponseValueRoomsValueViewsValue&gt;**](GetPropertyContent200ResponseValueRoomsValueViewsValue.md) | A map of the room views. See our [view reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known room view ID and name values. | [optional] |
| **occupancy** | [**GetPropertyContent200ResponseValueRoomsValueOccupancy**](GetPropertyContent200ResponseValueRoomsValueOccupancy.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueRoomsValue.new(
  id: null,
  name: null,
  descriptions: null,
  amenities: null,
  images: null,
  bed_groups: null,
  area: null,
  views: null,
  occupancy: null
)
```

