# ExpediaRapid::PaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Identifier for the type of payment. If affiliate_collect, card information is not required as EPS will not be processing the payment. However, billing contact information is still required. |  |
| **number** | **String** | Card number. Required for credit card transactions. | [optional] |
| **security_code** | **String** | CVV/CSV code from the back of the customer&#39;s card. Required for credit card transactions. | [optional] |
| **expiration_month** | **String** | Two-digit month the credit card will expire. Required for credit card transactions. | [optional] |
| **expiration_year** | **String** | Year the credit card will expire. Required for credit card transactions. | [optional] |
| **billing_contact** | [**PostPaymentSessionsRequestPaymentsInnerBillingContact**](PostPaymentSessionsRequestPaymentsInnerBillingContact.md) |  |  |
| **third_party_authentication** | [**PostPaymentSessionsRequestPaymentsInnerThirdPartyAuthentication**](PostPaymentSessionsRequestPaymentsInnerThirdPartyAuthentication.md) |  | [optional] |
| **enrollment_date** | **String** | Date the payment account was enrolled in the cardholder&#39;s account with the merchant, in ISO 8601 format (YYYY-MM-DD). | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PaymentRequest.new(
  type: null,
  number: null,
  security_code: null,
  expiration_month: null,
  expiration_year: null,
  billing_contact: null,
  third_party_authentication: null,
  enrollment_date: null
)
```

