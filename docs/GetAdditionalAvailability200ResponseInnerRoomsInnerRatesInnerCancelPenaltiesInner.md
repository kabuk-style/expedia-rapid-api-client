# ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | Currency of the amount object. | [optional] |
| **start** | **String** | Effective date and time of cancellation penalty in extended ISO 8601 format, with ±hh:mm timezone offset | [optional] |
| **_end** | **String** | End date and time of cancellation penalty in extended ISO 8601 format, with ±hh:mm timezone offset | [optional] |
| **amount** | **String** | The monetary amount of the penalty. | [optional] |
| **nights** | **String** | Number of nights charged for as penalty. | [optional] |
| **percent** | **String** | Percentage of total booking charged for as penalty. A thirty percent penalty would be returned as 30% | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetAdditionalAvailability200ResponseInnerRoomsInnerRatesInnerCancelPenaltiesInner.new(
  currency: null,
  start: null,
  _end: null,
  amount: null,
  nights: null,
  percent: null
)
```

