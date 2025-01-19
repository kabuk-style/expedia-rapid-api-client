# ExpediaRapid::GetAvailability200ResponseInnerRoomsInnerRatesInnerBedGroupsValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerBedGroupsValueLinks**](GetAvailability200ResponseInnerRoomsInnerRatesInnerBedGroupsValueLinks.md) |  | [optional] |
| **id** | **String** | Unique identifier for a bed group. | [optional] |
| **description** | **String** | This is a display ready description of a bed configuration for this room. | [optional] |
| **configuration** | [**Array&lt;GetPropertyContent200ResponseValueRoomsValueBedGroupsValueConfigurationInner&gt;**](GetPropertyContent200ResponseValueRoomsValueBedGroupsValueConfigurationInner.md) | The bed configuration for a given room. This array can be empty for the related bed group. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetAvailability200ResponseInnerRoomsInnerRatesInnerBedGroupsValue.new(
  links: null,
  id: null,
  description: null,
  configuration: null
)
```

