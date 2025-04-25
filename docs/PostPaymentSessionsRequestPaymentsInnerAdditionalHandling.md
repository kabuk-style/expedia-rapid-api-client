# ExpediaRapid::PostPaymentSessionsRequestPaymentsInnerAdditionalHandling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorized_expenses** | **String** | Indicates which types of expenses are authorized to be charged to the VCC. * &#x60;prestay_expenses_only&#x60; - Indicates that the provided VCC is for pre-stay charges only (e.g.,   deposits, cancellation fees, no-show fees). A physical card must be presented at check-in for any   remaining balance, as well as incidentals. * &#x60;total_booking_amount&#x60; - Indicates that both pre-stay charges and the total booking amount are   authorized, but no incidentals are authorized. A physical card must be presented at check-in for any   incidentals. * &#x60;total_plus_incidentals&#x60; - Indicates that pre-stay, total booking, and incidental expenses are   authorized. See &#x60;specified_incidental_expenses&#x60;. A physical card may be required for additional   incidental expenses. * &#x60;see_authorization_form&#x60; - Indicates that a property should refer to the authorization form that will   be sent either by the card provider or the authorizing company.  |  |
| **specified_incidental_expenses** | **Array&lt;String&gt;** | Included list of enumerated categories to restrict the authorized incidentals. This is only utilized when &#x60;authorized_expenses&#x60; is supplied with &#x60;total_plus_incidentals&#x60; and restrictions on incidentals are desired.&lt;br&gt; Example: To allow any incidental expenses, specify &#x60;authorized_expenses&#x60; equal to &#x60;total_plus_incidentals&#x60; and omit &#x60;specified_incidental_expenses&#x60;.  | [optional] |
| **total_charges_allowed** | [**GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency**](GetAvailability200ResponseInnerRoomsInnerRatesInnerOccupancyPricingValueTotalsInclusiveBillableCurrency.md) |  | [optional] |
| **is_cvc_required** | **Boolean** | Indicates whether a CVC is required for the provided VCC. If this is marked required, the security_code field for the payment MUST be provided.  | [optional] |
| **authorizing_company** | **String** | Company that will issue the authorization form for the virtual credit card payment. | [optional] |
| **card_contact** | [**PostPaymentSessionsRequestPaymentsInnerAdditionalHandlingCardContact**](PostPaymentSessionsRequestPaymentsInnerAdditionalHandlingCardContact.md) |  | [optional] |
| **max_payment_attempt_count** | **Float** | Requested limit to number of payment attempts. | [optional] |
| **payment_allowable_period_start** | **String** | Start date for valid range of the VCC payment instrument, in ISO 8601 format (YYYY-MM-DD). | [optional] |
| **payment_allowable_period_end** | **String** | End date for valid range of the VCC payment instrument, in ISO 8601 format (YYYY-MM-DD). | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostPaymentSessionsRequestPaymentsInnerAdditionalHandling.new(
  authorized_expenses: null,
  specified_incidental_expenses: null,
  total_charges_allowed: null,
  is_cvc_required: null,
  authorizing_company: null,
  card_contact: null,
  max_payment_attempt_count: null,
  payment_allowable_period_start: null,
  payment_allowable_period_end: null
)
```

