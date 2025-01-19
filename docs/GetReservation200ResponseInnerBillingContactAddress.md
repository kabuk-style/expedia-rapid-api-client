# ExpediaRapid::GetReservation200ResponseInnerBillingContactAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_1** | **String** | First line of street address. | [optional] |
| **line_2** | **String** | Second line of street address. | [optional] |
| **line_3** | **String** | Third line of street address. | [optional] |
| **city** | **String** | City where address is located. | [optional] |
| **state_province_code** | **String** | State or province code of address, if applicable. | [optional] |
| **postal_code** | **String** | Postal code of address, if applicable. | [optional] |
| **country_code** | **String** | Country code, in two-letter ISO 3166-1 alpha-2 format. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInnerBillingContactAddress.new(
  line_1: 555 1st St.,
  line_2: 10th Floor,
  line_3: Unit 12,
  city: Seattle,
  state_province_code: WA,
  postal_code: 98121,
  country_code: US
)
```

