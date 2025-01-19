# ExpediaRapid::CardOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Brand name for the accepted credit or debit card. Use this value to determine which cards to display on your checkout page. | [optional] |
| **processing_country** | **String** | The country in which the payment will be processed. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::CardOption.new(
  name: null,
  processing_country: null
)
```

