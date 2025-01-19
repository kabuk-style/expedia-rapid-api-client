# ExpediaRapid::MultiPolygon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of bounding polygon. | [optional] |
| **coordinates** | **Array&lt;Array&lt;Array&lt;Array&lt;Float&gt;&gt;&gt;&gt;** | An array of multiple polygon(s) that combine to make a full [MultiPolygon](https://www.rfc-editor.org/rfc/rfc7946#section-3.1.7) in geojson format. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::MultiPolygon.new(
  type: null,
  coordinates: null
)
```

