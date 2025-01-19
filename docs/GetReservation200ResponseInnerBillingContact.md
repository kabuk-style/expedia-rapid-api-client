# ExpediaRapid::GetReservation200ResponseInnerBillingContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **given_name** | **String** | First/given name of the payment type account holder. | [optional] |
| **family_name** | **String** | Last/family name of the payment type account holder. | [optional] |
| **address** | [**GetReservation200ResponseInnerBillingContactAddress**](GetReservation200ResponseInnerBillingContactAddress.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetReservation200ResponseInnerBillingContact.new(
  given_name: null,
  family_name: null,
  address: null
)
```

