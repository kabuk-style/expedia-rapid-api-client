# ExpediaRapid::CreateItineraryRequestInvoicing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | The traveler&#39;s company name to appear on the invoice. | [optional] |
| **company_address** | [**Address1**](Address1.md) |  | [optional] |
| **point_of_sale_display** | **String** | Provide this when a specific site or branding should be used on the invoice instead of partner name.  | [optional] |
| **email** | **String** | Email address to send invoices | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::CreateItineraryRequestInvoicing.new(
  company_name: null,
  company_address: null,
  point_of_sale_display: null,
  email: null
)
```

