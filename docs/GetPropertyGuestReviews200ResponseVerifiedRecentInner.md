# ExpediaRapid::GetPropertyGuestReviews200ResponseVerifiedRecentInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_source** | **String** | Where this review has been verified from. | [optional] |
| **title** | **String** | Title of this review. | [optional] |
| **date_submitted** | **String** | When this review was made, in ISO 8601 format. | [optional] |
| **rating** | **String** | The rating for this property given by the reviewer. Returns a value between 1.0 and 5.0. | [optional] |
| **reviewer_name** | **String** | The name of the person who wrote this review. | [optional] |
| **stay_date** | **String** | The year and month of the traveler&#39;s stay at the property, in ISO 8601 format (YYYY-MM). | [optional] |
| **trip_reason** | **String** | The reason category for this reviewer&#39;s trip. | [optional] |
| **travel_companion** | **String** | The companion category for any travelers that accompanied this reviewer. | [optional] |
| **text** | **String** | The text of the review itself. | [optional] |
| **management_responses** | [**Array&lt;GetPropertyGuestReviews200ResponseVerifiedRecentInnerManagementResponsesInner&gt;**](GetPropertyGuestReviews200ResponseVerifiedRecentInnerManagementResponsesInner.md) | A collection of the management responses to this review. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyGuestReviews200ResponseVerifiedRecentInner.new(
  verification_source: null,
  title: null,
  date_submitted: null,
  rating: null,
  reviewer_name: null,
  stay_date: null,
  trip_reason: null,
  travel_companion: null,
  text: null,
  management_responses: null
)
```

