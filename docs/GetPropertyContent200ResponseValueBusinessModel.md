# ExpediaRapid::GetPropertyContent200ResponseValueBusinessModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expedia_collect** | **Boolean** | Whether or not a payment for this property can be taken by Expedia at the time of booking. | [optional] |
| **property_collect** | **Boolean** | Whether or not a payment for this property can be taken by the property upon arrival. | [optional] |
| **updated_expedia_collect** | **Boolean** | Whether or not a payment for this property can be taken by Expedia at the time of booking and whether a VAT invoice can be requested from the property if the property is accountable to provide such a document. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueBusinessModel.new(
  expedia_collect: null,
  property_collect: null,
  updated_expedia_collect: null
)
```

