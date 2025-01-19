# ExpediaRapid::CancelRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | The amount of the refund on cancelling the itinerary. | [optional] |
| **currency** | **String** | The currency of the refund amount. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::CancelRefund.new(
  amount: null,
  currency: null
)
```

