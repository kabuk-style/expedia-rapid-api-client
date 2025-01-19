# ExpediaRapid::PostPaymentSessionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The version of the EgPayments.js library. |  |
| **browser_accept_header** | **String** | The customer&#39;s browser accept header that was used in the booking request. |  |
| **encoded_browser_metadata** | **String** | Encoded browser metadata, provided by the EgPayments.js library. |  |
| **preferred_challenge_window_size** | **String** | The preferred window size that needs to be displayed to the customer. Following are the possible values of this field:   * &#x60;extra_small&#x60;: 250 x 400   * &#x60;small&#x60;: 390 x 400   * &#x60;medium&#x60;: 600 x 400   * &#x60;large&#x60;: 500 x 600   * &#x60;full_screen&#x60;: Full screen  |  |
| **merchant_url** | **String** | Fully qualified URL of merchant website or customer care site. |  |
| **customer_account_details** | [**PostPaymentSessionsRequestCustomerAccountDetails**](PostPaymentSessionsRequestCustomerAccountDetails.md) |  |  |
| **payments** | [**Array&lt;PostPaymentSessionsRequestPaymentsInner&gt;**](PostPaymentSessionsRequestPaymentsInner.md) |  |  |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostPaymentSessionsRequest.new(
  version: null,
  browser_accept_header: null,
  encoded_browser_metadata: null,
  preferred_challenge_window_size: null,
  merchant_url: null,
  customer_account_details: null,
  payments: null
)
```

