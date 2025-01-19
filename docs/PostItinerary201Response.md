# ExpediaRapid::PostItinerary201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **itinerary_id** | **String** | The itinerary id. | [optional] |
| **links** | [**PostItinerary201ResponseLinks**](PostItinerary201ResponseLinks.md) |  | [optional] |
| **encoded_challenge_config** | **String** | The challenge config that is required to perform payment challenge. This field will be available when payment challenge is needed. | [optional] |
| **trader_information** | [**PriceCheck200ResponseTraderInformation**](PriceCheck200ResponseTraderInformation.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostItinerary201Response.new(
  itinerary_id: null,
  links: null,
  encoded_challenge_config: null,
  trader_information: null
)
```

