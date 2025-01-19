# ExpediaRapid::Chain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Chain id. | [optional] |
| **name** | **String** | Chain name. | [optional] |
| **brands** | [**Hash&lt;String, GetPropertyContent200ResponseValueChainBrandsValue&gt;**](GetPropertyContent200ResponseValueChainBrandsValue.md) | Map of the chain&#39;s brands. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Chain.new(
  id: null,
  name: null,
  brands: null
)
```

