# ExpediaRapid::PostPaymentSessions201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_session_id** | **String** | The registered payment session ID. | [optional] |
| **encoded_init_config** | **String** | A base64 encoded object which contains configuration needed to perform device fingerprinting. It is used in conjunction with the provided Javascript library for PSD2. | [optional] |
| **links** | [**PostPaymentSessions201ResponseLinks**](PostPaymentSessions201ResponseLinks.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostPaymentSessions201Response.new(
  payment_session_id: null,
  encoded_init_config: null,
  links: null
)
```

