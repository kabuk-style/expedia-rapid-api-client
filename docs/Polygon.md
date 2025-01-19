# ExpediaRapid::Polygon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of bounding polygon. | [optional] |
| **coordinates** | **Array&lt;Array&lt;Array&lt;Float&gt;&gt;&gt;** | An array of linear ring coordinate arrays that combine to make up a single [Polygon](https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6) in geojson format. If there is more than one linear ring at this level, the first is the outer boundary and the remaining linear rings are interior rings or holes. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Polygon.new(
  type: null,
  coordinates: null
)
```

