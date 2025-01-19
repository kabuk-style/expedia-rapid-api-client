# ExpediaRapid::PostPaymentSessionsRequestCustomerAccountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication_method** | **String** | Mechanism used by the cardholder to authenticate to the merchant. | [optional] |
| **authentication_timestamp** | **String** | Date and time in UTC of the cardholder authentication, in extended ISO 8601 format. | [optional] |
| **create_date** | **String** | Date the cardholder opened the account with the merchant, in ISO 8601 format (YYYY-MM-DD). | [optional] |
| **change_date** | **String** | Date the cardholder’s account with the merchant was last changed, including Billing or Shipping address, new payment account, or new user(s) added, in ISO 8601 format (YYYY-MM-DD). | [optional] |
| **password_change_date** | **String** | Date the cardholder’s account with the merchant had a password change or account reset, in ISO 8601 format (YYYY-MM-DD). | [optional] |
| **add_card_attempts** | **Float** | Number of add card attempts in the last 24 hours. | [optional] |
| **account_purchases** | **Float** | Number of purchases with this cardholder&#39;s account during the previous six months. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostPaymentSessionsRequestCustomerAccountDetails.new(
  authentication_method: null,
  authentication_timestamp: null,
  create_date: null,
  change_date: null,
  password_change_date: null,
  add_card_attempts: null,
  account_purchases: null
)
```

