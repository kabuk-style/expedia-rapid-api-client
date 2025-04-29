# ExpediaRapid::SupplyContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The contact name. | [optional] |
| **phone** | [**PostPaymentSessionsRequestPaymentsInnerAdditionalHandlingCardContactPhone**](PostPaymentSessionsRequestPaymentsInnerAdditionalHandlingCardContactPhone.md) |  | [optional] |
| **email** | **String** | Email address for the contact. | [optional] |
| **address** | [**GetReservation200ResponseInnerBillingContactAddress**](GetReservation200ResponseInnerBillingContactAddress.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::SupplyContact.new(
  name: Pat Host,
  phone: null,
  email: pat_host@ilovevrbo.com,
  address: null
)
```

