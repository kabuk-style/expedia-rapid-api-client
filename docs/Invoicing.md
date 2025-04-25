# ExpediaRapid::Invoicing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consent_to_share** | **Boolean** | Whether the partner and traveler consent to share the invoicing section information with the supplier and property. If not provided, this invoicing data will not be shared with the supplier or property.  | [optional] |
| **company_name** | **String** | The traveler&#39;s company name to appear on the invoice. | [optional] |
| **company_address** | [**GetReservation200ResponseInnerBillingContactAddress**](GetReservation200ResponseInnerBillingContactAddress.md) |  | [optional] |
| **point_of_sale_display** | **String** | Provide this when a specific site or branding should be used on the invoice instead of partner name.  | [optional] |
| **email** | **String** | Email address to send invoices | [optional] |
| **vat_number** | **String** | A custom VAT number to include on invoices | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::Invoicing.new(
  consent_to_share: null,
  company_name: null,
  company_address: null,
  point_of_sale_display: null,
  email: null,
  vat_number: null
)
```

