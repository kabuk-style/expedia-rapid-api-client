# ExpediaRapid::GetPropertyContent200ResponseValueAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_1** | **String** | Address line 1. | [optional] |
| **line_2** | **String** | Address line 2. | [optional] |
| **city** | **String** | City. | [optional] |
| **state_province_code** | **String** | 2-letter or 3-letter state/province code for Australia, Canada and the USA. | [optional] |
| **state_province_name** | **String** | Text name of the State/Province - more common for additional countries. | [optional] |
| **postal_code** | **String** | Postal/zip code. | [optional] |
| **country_code** | **String** | 2-letter country code, in ISO 3166-1 alpha-2 format. | [optional] |
| **obfuscation_required** | **Boolean** | Flag to indicate whether a property address requires obfuscation before the property has been booked. If true, only the city, province, and country of the address can be shown to the customer. | [optional] |
| **localized** | [**GetPropertyContent200ResponseValueAddressLocalized**](GetPropertyContent200ResponseValueAddressLocalized.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueAddress.new(
  line_1: 123 Main St,
  line_2: Apt A,
  city: Springfield,
  state_province_code: MO,
  state_province_name: Missouri,
  postal_code: 65804,
  country_code: US,
  obfuscation_required: false,
  localized: null
)
```

