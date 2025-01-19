# ExpediaRapid::PostItineraryRequestPhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The numerical portion of the country code from the phone number. Do not include the leading &#39;+&#39; character. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **area_code** | **String** | The area code of the phone number. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. | [optional] |
| **number** | **String** | The remaining digits of the phone number. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostItineraryRequestPhone.new(
  country_code: null,
  area_code: null,
  number: null
)
```

