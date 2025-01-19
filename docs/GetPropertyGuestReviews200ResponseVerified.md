# ExpediaRapid::GetPropertyGuestReviews200ResponseVerified

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recent** | [**Array&lt;GetPropertyGuestReviews200ResponseVerifiedRecentInner&gt;**](GetPropertyGuestReviews200ResponseVerifiedRecentInner.md) | A collection of the guest reviews which have been verified, in order, starting with the newest. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyGuestReviews200ResponseVerified.new(
  recent: null
)
```

