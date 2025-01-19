# ExpediaRapid::GetPropertyContent200ResponseValueRatingsProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rating** | **String** | The rating assigned to this property. Returns a value between 0.0 and 5.0. A value of 0.0 or a blank value indicates no rating is available. | [optional] |
| **type** | **String** | Returns a value of either \&quot;Star\&quot; or \&quot;Alternate\&quot;. Star indicates the rating is provided by the property’s local star rating authority. Alternate indicates that the rating is an Expedia-assigned value; an official rating was not available. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueRatingsProperty.new(
  rating: null,
  type: null
)
```

