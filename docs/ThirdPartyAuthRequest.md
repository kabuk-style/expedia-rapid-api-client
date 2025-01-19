# ExpediaRapid::ThirdPartyAuthRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cavv** | **String** | Cryptographic element used to indicate Authentication was successfully performed  |  |
| **eci** | **String** | Electronic Commerce Indicator. The ECI is used in payer authentication to indicate the level of security used when the cardholder provided payment information to the merchant. Its value corresponds to the authentication result and the characteristics of the merchant checkout process. Each card network, e.g., Visa, MasterCard, JCB, has specific rules around the appropriate values and use of the ECI.  |  |
| **three_ds_version** | **String** | Indicates what version of 3DS was used to authenticate the user.  |  |
| **ds_transaction_id** | **String** | Directory Server Transaction Id. Returned during authentication and is used as an additional parameter to validate that transaction was authenticated.  |  |
| **pa_res_status** | **String** | set only if PAResStatus value is received in the authentication response  | [optional] |
| **ve_res_status** | **String** | set this only if PAResStatus value is received in the authentication response if Authentication was Frictionless → AuthenticationResponse.PAResStatus, if Authentication was a successful challenge → \&quot;C\&quot; (This is the directory response for challenge)  | [optional] |
| **xid** | **String** | String used by both Visa and MasterCard which identifies a specific transaction on the Directory This string value should remain consistent throughout a transaction&#39;s history.  | [optional] |
| **cavv_algorithm** | **String** | Used in some scenarios for 3DS 1.0.  | [optional] |
| **ucaf_indicator** | **String** | Only received for Mastercard transactions, else can be null. 0 - Non-SecureCode transaction, bypassed by the Merchant 1 - Merchant-Only SecureCode transaction 2 - Fully authenticated SecureCode transaction  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::ThirdPartyAuthRequest.new(
  cavv: null,
  eci: null,
  three_ds_version: xxx,
  ds_transaction_id: null,
  pa_res_status: null,
  ve_res_status: C,
  xid: null,
  cavv_algorithm: null,
  ucaf_indicator: null
)
```

