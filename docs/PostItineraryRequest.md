# ExpediaRapid::PostItineraryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affiliate_reference_id** | **String** | Your unique reference value. This field supports from 3 to a maximum of 28 characters and is required to be unique (if provided). Entering special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) in this field will result in the request being rejected. | [optional] |
| **hold** | **Boolean** | Flag for placing a booking on hold. The booking will be released if the resume link is not followed within the hold period. Please refer to our Hold and Resume documentation. | [optional] |
| **email** | **String** | Email address for the customer. Must adhere to standard RFC 822 email format. Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. |  |
| **phone** | [**PostItineraryRequestPhone**](PostItineraryRequestPhone.md) |  |  |
| **rooms** | [**Array&lt;PostItineraryRequestRoomsInner&gt;**](PostItineraryRequestRoomsInner.md) |  |  |
| **payments** | [**Array&lt;PostPaymentSessionsRequestPaymentsInner&gt;**](PostPaymentSessionsRequestPaymentsInner.md) | Required if payment information prior to booking was not submitted. If register payments was called prior to this call, do not submit payment information again. | [optional] |
| **affiliate_metadata** | **String** | Field that stores up to 256 characters of additional metadata with the itinerary. Will be returned on all retrieve responses for this itinerary. The data must be in the format &#39;key1:value|key2:value|key3:value&#39;. Other Special characters (\&quot;&lt;\&quot;, \&quot;&gt;\&quot;, \&quot;(\&quot;, \&quot;)\&quot;, and \&quot;&amp;\&quot;) entered in this field will be re-encoded. | [optional] |
| **tax_registration_number** | **String** | The customer&#39;s taxpayer identification number that is provided by the government to nationals or resident aliens. This number should be collected from individuals that pay taxes or participate in activities that provide revenue for one or more tax types. Note: This value is only needed from Brazilian and Indian customers. | [optional] |
| **traveler_handling_instructions** | **String** | Custom traveler handling instructions for the hotel. Do not include PCI sensitive data, such as credit card numbers, in this field. | [optional] |
| **invoicing** | [**PostItineraryRequestInvoicing**](PostItineraryRequestInvoicing.md) |  | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::PostItineraryRequest.new(
  affiliate_reference_id: null,
  hold: null,
  email: null,
  phone: null,
  rooms: null,
  payments: null,
  affiliate_metadata: null,
  tax_registration_number: null,
  traveler_handling_instructions: null,
  invoicing: null
)
```

