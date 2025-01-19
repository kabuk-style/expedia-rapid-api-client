# ExpediaRapid::GetPropertyContent200ResponseValueLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coordinates** | [**GetPropertyContent200ResponseValueLocationCoordinates**](GetPropertyContent200ResponseValueLocationCoordinates.md) |  | [optional] |
| **obfuscated_coordinates** | [**GetPropertyContent200ResponseValueLocationCoordinates**](GetPropertyContent200ResponseValueLocationCoordinates.md) |  | [optional] |
| **obfuscation_required** | **Boolean** | When this field is true, the &#x60;obfuscated_coordinates&#x60; must be used to display approximate location instead of the precise location of &#x60;coordinates&#x60;.  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueLocation.new(
  coordinates: null,
  obfuscated_coordinates: null,
  obfuscation_required: null
)
```

