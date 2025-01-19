# ExpediaRapid::TraderDetailsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The trader name. | [optional] |
| **address** | [**TraderAddress**](TraderAddress.md) |  | [optional] |
| **business_register_name** | **String** | Name of the register where the trader is registered, and is related to the &#x60;business_register_number&#x60;  | [optional] |
| **business_register_number** | **String** | Business registration number  | [optional] |
| **self_certification** | **Boolean** | Certification that the trader has confirmed their commitment to only offer products or services that comply with the applicable rules of Union law.  | [optional] |
| **contact_message** | **String** | The trader contact message. | [optional] |
| **right_to_withdraw_message** | **String** | The trader right to withdraw message. | [optional] |
| **email** | **String** | The trader email address. | [optional] |
| **phone** | **String** | The trader phone number. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::TraderDetailsInner.new(
  name: Expedia,
  address: null,
  business_register_name: A real business register name,
  business_register_number: 792837491b,
  self_certification: true,
  contact_message: This property is managed by a professional host. The provision of housing is linked to their trade, business or profession.,
  right_to_withdraw_message: If you cancel your booking, you&#39;ll be subject to the property&#39;s cancellation policy. In accordance with EU regulations about consumer rights, property booking services are not subject to the right to withdraw.,
  email: travel@support.expedia.com,
  phone: 0330-123-1235
)
```

