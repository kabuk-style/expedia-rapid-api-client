# ExpediaRapid::GuestReviewsVerified

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recent** | [**Array&lt;Review&gt;**](Review.md) | A collection of the guest reviews which have been verified, in order, starting with the newest. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GuestReviewsVerified.new(
  recent: null
)
```

