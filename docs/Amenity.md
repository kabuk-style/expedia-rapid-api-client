# ExpediaRapid::Amenity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The amenity definition ID for this amenity. | [optional] |
| **name** | **String** | Amenity name. | [optional] |
| **value** | **String** | Amenity value. | [optional] |
| **categories** | **Array&lt;String&gt;** | This is an optional field and will be present only if the amenity falls into one or more of these amenity categories.&lt;br&gt; See the Amenity Categories section of the [Content Reference Lists](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for a list of values.  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Amenity.new(
  id: null,
  name: null,
  value: null,
  categories: null
)
```

