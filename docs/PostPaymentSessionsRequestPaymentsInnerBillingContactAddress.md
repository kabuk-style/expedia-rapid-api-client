# ExpediaRapid::PostPaymentSessionsRequestPaymentsInnerBillingContactAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_1** | **String** | First line of customer&#39;s street address. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. | [optional] |
| **line_2** | **String** | Second line of customer&#39;s street address. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. | [optional] |
| **line_3** | **String** | Third line of customer&#39;s street address. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. | [optional] |
| **city** | **String** | Customer&#39;s city. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. | [optional] |
| **state_province_code** | **String** | Customer&#39;s state or province code. Mandatory for AU, CA and US. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. | [optional] |
| **postal_code** | **String** | Customer&#39;s postal code. Mandatory for CA, GB, and US. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. | [optional] |
| **country_code** | **String** | Customer&#39;s country code, in two-letter ISO 3166-1 alpha-2 format. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. Only ISO-8859-1 compliant characters are allowed. |  |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostPaymentSessionsRequestPaymentsInnerBillingContactAddress.new(
  line_1: null,
  line_2: null,
  line_3: null,
  city: null,
  state_province_code: null,
  postal_code: null,
  country_code: null
)
```

