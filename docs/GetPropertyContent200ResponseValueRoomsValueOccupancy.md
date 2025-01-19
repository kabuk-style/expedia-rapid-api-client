# ExpediaRapid::GetPropertyContent200ResponseValueRoomsValueOccupancy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_allowed** | [**GetPropertyContent200ResponseValueRoomsValueOccupancyMaxAllowed**](GetPropertyContent200ResponseValueRoomsValueOccupancyMaxAllowed.md) |  | [optional] |
| **age_categories** | [**Hash&lt;String, GetPropertyContent200ResponseValueRoomsValueOccupancyAgeCategoriesValue&gt;**](GetPropertyContent200ResponseValueRoomsValueOccupancyAgeCategoriesValue.md) | Map of the age categories used to determine the maximum children and adult occupancy. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueRoomsValueOccupancy.new(
  max_allowed: null,
  age_categories: null
)
```

