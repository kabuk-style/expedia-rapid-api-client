# ExpediaRapid::GetPropertyContent200ResponseValueRoomsValueBedGroupsValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for a bed group. | [optional] |
| **description** | **String** | This is a display ready description of a bed configuration for this room. | [optional] |
| **configuration** | [**Array&lt;GetPropertyContent200ResponseValueRoomsValueBedGroupsValueConfigurationInner&gt;**](GetPropertyContent200ResponseValueRoomsValueBedGroupsValueConfigurationInner.md) | An array of bed configurations for this room. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueRoomsValueBedGroupsValue.new(
  id: null,
  description: null,
  configuration: null
)
```

