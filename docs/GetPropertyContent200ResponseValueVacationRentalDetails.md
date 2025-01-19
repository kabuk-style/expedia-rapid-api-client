# ExpediaRapid::GetPropertyContent200ResponseValueVacationRentalDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registry_number** | **String** | The property&#39;s registry number required by some jurisdictions. | [optional] |
| **private_host** | **Boolean** | Indicates if a property has a private host. | [optional] |
| **property_manager** | [**GetPropertyContent200ResponseValueVacationRentalDetailsPropertyManager**](GetPropertyContent200ResponseValueVacationRentalDetailsPropertyManager.md) |  | [optional] |
| **rental_agreement** | [**GetPropertyContent200ResponseValueVacationRentalDetailsRentalAgreement**](GetPropertyContent200ResponseValueVacationRentalDetailsRentalAgreement.md) |  | [optional] |
| **house_rules** | **Array&lt;String&gt;** | List of strings detailing house rules. | [optional] |
| **enhanced_house_rules** | [**Hash&lt;String, GetPropertyContent200ResponseValueVacationRentalDetailsEnhancedHouseRulesValue&gt;**](GetPropertyContent200ResponseValueVacationRentalDetailsEnhancedHouseRulesValue.md) | Map of enhanced house rules. | [optional] |
| **amenities** | [**GetPropertyContent200ResponseValueAmenitiesValue**](GetPropertyContent200ResponseValueAmenitiesValue.md) |  | [optional] |
| **vrbo_srp_id** | **String** | The Vrbo srp needed for link-off. | [optional] |
| **listing_id** | **String** | The listing id for a Vrbo property. | [optional] |
| **listing_number** | **String** | The listing number for a Vrbo property. | [optional] |
| **listing_source** | **String** | The listing source. | [optional] |
| **listing_unit** | **String** | The specific unit. | [optional] |
| **ipm_name** | **String** | The name of the IPM used to build guest messaging to inform travelers of the name of the IPM who will charge their card and/or send them a confirmation email.  | [optional] |
| **unit_configurations** | **Hash&lt;String, Array&lt;GetPropertyContent200ResponseValueVacationRentalDetailsUnitConfigurationsValueInner&gt;&gt;** | Map of the vacation rental unit configurations. The key value is the unit location. | [optional] |
| **free_text** | **String** | A free text description that could contain significantly unstructured information that could impact the booking and should be displayed to customers. This field could contain html break tags &#x60;&lt;br&gt;&#x60; that may make display challenging. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueVacationRentalDetails.new(
  registry_number: null,
  private_host: null,
  property_manager: null,
  rental_agreement: null,
  house_rules: null,
  enhanced_house_rules: {&quot;Children&quot;:{&quot;rule&quot;:&quot;Children allowed&quot;,&quot;additional_information&quot;:[&quot;Children allowed under age 13.&quot;,&quot;Multiple children must sleep on cots.&quot;]},&quot;Pets&quot;:{&quot;rule&quot;:&quot;Pets allowed&quot;,&quot;additional_information&quot;:[&quot;Pets must be kept on the balcony.&quot;]}},
  amenities: null,
  vrbo_srp_id: null,
  listing_id: null,
  listing_number: null,
  listing_source: null,
  listing_unit: null,
  ipm_name: null,
  unit_configurations: {&quot;1&quot;:[{&quot;type&quot;:&quot;TWIN_SINGLE_BED&quot;,&quot;description&quot;:&quot;Twin/Single bed(s) -&quot;,&quot;quantity&quot;:1},{&quot;type&quot;:&quot;CHILD_BED&quot;,&quot;description&quot;:&quot;Child bed(s) -&quot;,&quot;quantity&quot;:1}],&quot;2&quot;:[{&quot;type&quot;:&quot;QUEEN_BED&quot;,&quot;description&quot;:&quot;Queen bed(s) -&quot;,&quot;quantity&quot;:1}],&quot;Other1&quot;:[{&quot;type&quot;:&quot;CHILD_BED&quot;,&quot;description&quot;:&quot;Child bed(s) -&quot;,&quot;quantity&quot;:3}]},
  free_text: null
)
```

