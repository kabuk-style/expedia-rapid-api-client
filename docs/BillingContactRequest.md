# ExpediaRapid::BillingContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **given_name** | **String** | First/given name of the payment type account holder. Max 60 characters. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **family_name** | **String** | Last/family name of the payment type account holder. Max 60 characters. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **address** | [**PostPaymentSessionsRequestPaymentsInnerBillingContactAddress**](PostPaymentSessionsRequestPaymentsInnerBillingContactAddress.md) |  |  |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::BillingContactRequest.new(
  given_name: null,
  family_name: null,
  address: null
)
```

