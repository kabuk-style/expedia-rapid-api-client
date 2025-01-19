# ExpediaRapid::TraderInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **traders** | [**Array&lt;PriceCheck200ResponseTraderInformationTradersInner&gt;**](PriceCheck200ResponseTraderInformationTradersInner.md) | An array of traders. | [optional] |
| **terms_and_conditions** | **String** | The url linking to the full text terms and conditions. |  |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::TraderInformation.new(
  traders: null,
  terms_and_conditions: https://www.expedia.com/terms_and_conditions
)
```

