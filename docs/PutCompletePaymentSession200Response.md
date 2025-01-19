# ExpediaRapid::PutCompletePaymentSession200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **itinerary_id** | **String** | The itinerary id. | [optional] |
| **links** | [**PutCompletePaymentSession200ResponseLinks**](PutCompletePaymentSession200ResponseLinks.md) |  | [optional] |
| **trader_information** | [**PriceCheck200ResponseTraderInformation**](PriceCheck200ResponseTraderInformation.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PutCompletePaymentSession200Response.new(
  itinerary_id: null,
  links: null,
  trader_information: null
)
```

