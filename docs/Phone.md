# ExpediaRapid::Phone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The numerical portion of the country code from the phone number. Do not include the leading &#39;+&#39; character. | [optional] |
| **area_code** | **String** | The area code of the phone number. | [optional] |
| **number** | **String** | The remaining digits of the phone number. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Phone.new(
  country_code: 1,
  area_code: 487,
  number: 5550077
)
```

