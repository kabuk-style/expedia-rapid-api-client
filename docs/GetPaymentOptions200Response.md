# ExpediaRapid::GetPaymentOptions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affiliate_collect** | [**GetPaymentOptions200ResponseAffiliateCollect**](GetPaymentOptions200ResponseAffiliateCollect.md) |  | [optional] |
| **credit_card** | [**GetPaymentOptions200ResponseCreditCard**](GetPaymentOptions200ResponseCreditCard.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPaymentOptions200Response.new(
  affiliate_collect: null,
  credit_card: null
)
```

