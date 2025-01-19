# ExpediaRapid::NightCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The price breakout type.   * &#x60;base_rate&#x60; - The room rate without any taxes and fees applied.   * &#x60;tax_and_service_fee&#x60; - Tax recovery charges, service fees, and taxes. Ensure that you capture these values and display as:                             \&quot;Taxes and Fees\&quot;   * &#x60;extra_person_fee&#x60; - A per night fee that is charged by a hotel for additional adults over the nightly rate. This fee is included as part of the total.   * &#x60;property_fee&#x60; - The property fee surcharge type must be displayed beginning on the initial hotel room selection page, immediately after your hotel search results page. This placement is required by the U.S. Federal Trade Commission (FTC).                      Display this surcharge as \&quot;Property Fee\&quot; on your room selection page, as described above, and in all subsequent price breakdowns for the following Points of Sale:                      * &#x60;US&#x60;                      * &#x60;Canada&#x60;                      * &#x60;Brazil&#x60;                      * &#x60;LATAM&#x60;   * &#x60;sales_tax&#x60; - Taxes that must be displayed by certain jurisdictional laws. Ensure that you capture these values and display as \&quot;Taxes\&quot;.   * &#x60;adjustment&#x60; - This is the amount that the individual night have been adjusted/discounted.   * &#x60;recovery_charges_and_fees&#x60; - Tax recovery charges, service fees, and taxes. Ensure that you capture these values and display as:                                   \&quot;Taxes and Fees\&quot;   * &#x60;traveler_service_fee&#x60; - Fee charged by Vrbo to support use of online tools, services and functions on its platform which enable guest self service. May be displayed as &#39;Traveler Service Fee&#39; or &#39;Service Fee&#39; any time fees are broken out for display on partner sites.  | [optional] |
| **value** | **String** | The value of the amount object. Decimal point inline with correct precision. | [optional] |
| **currency** | **String** | Currency of the amount object. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::NightCharge.new(
  type: null,
  value: null,
  currency: null
)
```

