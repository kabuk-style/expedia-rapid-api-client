# ExpediaRapid::GetPaymentOptions200ResponseCreditCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_options** | [**Array&lt;GetPaymentOptions200ResponseCreditCardCardOptionsInner&gt;**](GetPaymentOptions200ResponseCreditCardCardOptionsInner.md) |  | [optional] |
| **merchant** | [**GetPaymentOptions200ResponseCreditCardMerchant**](GetPaymentOptions200ResponseCreditCardMerchant.md) |  | [optional] |
| **name** | **String** | Display name of payment option. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPaymentOptions200ResponseCreditCard.new(
  card_options: null,
  merchant: null,
  name: null
)
```

