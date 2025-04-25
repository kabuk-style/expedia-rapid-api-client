# ExpediaRapid::GetReservation200ResponseInnerSupplierTransparency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **point_of_sale_display_to_share** | **String** | The name of the point of sale to be shared. | [optional] |
| **company_name_to_share** | **String** | The name of the company to be shared. | [optional] |
| **consent_to_share** | **Boolean** | Whether or not this info should be shared. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInnerSupplierTransparency.new(
  point_of_sale_display_to_share: null,
  company_name_to_share: null,
  consent_to_share: null
)
```

