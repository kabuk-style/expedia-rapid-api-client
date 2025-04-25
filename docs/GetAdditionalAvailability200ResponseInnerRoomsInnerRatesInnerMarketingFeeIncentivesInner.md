# ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerMarketingFeeIncentivesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | The source of the incentive. This can be used to differentiate between incentives in the case that more than one incentive applies to a particular rate.  | [optional] |
| **start** | **String** | The first stay date with the incentive applied in ISO 8601 format. | [optional] |
| **_end** | **String** | The last stay date with the incentive applied in ISO 8601 format. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerMarketingFeeIncentivesInner.new(
  source: null,
  start: null,
  _end: null
)
```

