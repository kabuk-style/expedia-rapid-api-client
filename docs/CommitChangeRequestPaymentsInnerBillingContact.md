# ExpediaRapid::CommitChangeRequestPaymentsInnerBillingContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **given_name** | **String** | First/given name of the payment type account holder. Max 60 characters. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **family_name** | **String** | Last/family name of the payment type account holder. Max 60 characters. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **phone** | [**PostItineraryRequestPhone**](PostItineraryRequestPhone.md) |  | [optional] |
| **address** | [**PostPaymentSessionsRequestPaymentsInnerBillingContactAddress**](PostPaymentSessionsRequestPaymentsInnerBillingContactAddress.md) |  |  |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::CommitChangeRequestPaymentsInnerBillingContact.new(
  given_name: null,
  family_name: null,
  phone: null,
  address: null
)
```

