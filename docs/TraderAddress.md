# ExpediaRapid::TraderAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_1** | **String** | First line of customer&#39;s street address. | [optional] |
| **line_2** | **String** | Second line of customer&#39;s street address. | [optional] |
| **line_3** | **String** | Third line of customer&#39;s street address. | [optional] |
| **city** | **String** | Customer&#39;s city. | [optional] |
| **state_province_code** | **String** | Customer&#39;s state or province code. | [optional] |
| **postal_code** | **String** | Customer&#39;s postal code. | [optional] |
| **country_code** | **String** | Customer&#39;s country code, in two-letter ISO 3166-1 alpha-2 format. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::TraderAddress.new(
  line_1: 555 1st St,
  line_2: 10th Floor,
  line_3: Unit 12,
  city: Seattle,
  state_province_code: WA,
  postal_code: 98121,
  country_code: US
)
```

