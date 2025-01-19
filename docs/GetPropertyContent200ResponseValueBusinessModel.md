# ExpediaRapid::GetPropertyContent200ResponseValueBusinessModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expedia_collect** | **Boolean** | Whether or not a payment for this property can be taken by Expedia at the time of booking. | [optional] |
| **property_collect** | **Boolean** | Whether or not a payment for this property can be taken by the property upon arrival. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueBusinessModel.new(
  expedia_collect: null,
  property_collect: null
)
```

