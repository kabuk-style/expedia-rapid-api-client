# ExpediaRapid::GetPropertyContent200ResponseValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **String** | Unique Expedia property ID. | [optional] |
| **name** | **String** | Property name. | [optional] |
| **address** | [**GetPropertyContent200ResponseValueAddress**](GetPropertyContent200ResponseValueAddress.md) |  | [optional] |
| **ratings** | [**GetPropertyContent200ResponseValueRatings**](GetPropertyContent200ResponseValueRatings.md) |  | [optional] |
| **location** | [**GetPropertyContent200ResponseValueLocation**](GetPropertyContent200ResponseValueLocation.md) |  | [optional] |
| **phone** | **String** | The property&#39;s phone number. | [optional] |
| **fax** | **String** | The property&#39;s fax number. | [optional] |
| **category** | [**GetPropertyContent200ResponseValueCategory**](GetPropertyContent200ResponseValueCategory.md) |  | [optional] |
| **business_model** | [**GetPropertyContent200ResponseValueBusinessModel**](GetPropertyContent200ResponseValueBusinessModel.md) |  | [optional] |
| **rank** | **Float** | The property’s rank across all properties. This value sorts properties based on EPS transactional data and details about the property, with 1 indicating the best-performing property and others following in ascending numerical order. | [optional] |
| **checkin** | [**GetPropertyContent200ResponseValueCheckin**](GetPropertyContent200ResponseValueCheckin.md) |  | [optional] |
| **checkout** | [**GetPropertyContent200ResponseValueCheckout**](GetPropertyContent200ResponseValueCheckout.md) |  | [optional] |
| **fees** | [**GetPropertyContent200ResponseValueFees**](GetPropertyContent200ResponseValueFees.md) |  | [optional] |
| **policies** | [**GetPropertyContent200ResponseValuePolicies**](GetPropertyContent200ResponseValuePolicies.md) |  | [optional] |
| **attributes** | [**GetPropertyContent200ResponseValueAttributes**](GetPropertyContent200ResponseValueAttributes.md) |  | [optional] |
| **amenities** | [**Hash&lt;String, GetPropertyContent200ResponseValueAmenitiesValue&gt;**](GetPropertyContent200ResponseValueAmenitiesValue.md) | Lists all of the amenities available for all guests at the property. See our [amenities reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known amenity ID and name values. | [optional] |
| **images** | [**Array&lt;GetPropertyContent200ResponseValueImagesInner&gt;**](GetPropertyContent200ResponseValueImagesInner.md) | Contains all property images available. | [optional] |
| **onsite_payments** | [**GetPropertyContent200ResponseValueOnsitePayments**](GetPropertyContent200ResponseValueOnsitePayments.md) |  | [optional] |
| **rooms** | [**Hash&lt;String, GetPropertyContent200ResponseValueRoomsValue&gt;**](GetPropertyContent200ResponseValueRoomsValue.md) | Information about all of the rooms at the property. | [optional] |
| **rates** | [**Hash&lt;String, GetPropertyContent200ResponseValueRatesValue&gt;**](GetPropertyContent200ResponseValueRatesValue.md) | Additional information about the rates offered by the property. This should be used in conjunction with the pricing and other rate-related information in shopping. | [optional] |
| **dates** | [**GetPropertyContent200ResponseValueDates**](GetPropertyContent200ResponseValueDates.md) |  | [optional] |
| **descriptions** | [**GetPropertyContent200ResponseValueDescriptions**](GetPropertyContent200ResponseValueDescriptions.md) |  | [optional] |
| **statistics** | [**Hash&lt;String, GetPropertyContent200ResponseValueStatisticsValue&gt;**](GetPropertyContent200ResponseValueStatisticsValue.md) | Statistics of the property, such as number of floors. See our [statistics reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known statistics ID and name values. | [optional] |
| **airports** | [**GetPropertyContent200ResponseValueAirports**](GetPropertyContent200ResponseValueAirports.md) |  | [optional] |
| **themes** | [**Hash&lt;String, GetPropertyContent200ResponseValueThemesValue&gt;**](GetPropertyContent200ResponseValueThemesValue.md) | Themes that describe the property. See our [themes reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known theme ID and name values. | [optional] |
| **all_inclusive** | [**GetPropertyContent200ResponseValueAllInclusive**](GetPropertyContent200ResponseValueAllInclusive.md) |  | [optional] |
| **tax_id** | **String** | Tax ID. | [optional] |
| **chain** | [**GetPropertyContent200ResponseValueChain**](GetPropertyContent200ResponseValueChain.md) |  | [optional] |
| **brand** | [**GetPropertyContent200ResponseValueChainBrandsValue**](GetPropertyContent200ResponseValueChainBrandsValue.md) |  | [optional] |
| **spoken_languages** | [**Hash&lt;String, GetPropertyContent200ResponseValueSpokenLanguagesValue&gt;**](GetPropertyContent200ResponseValueSpokenLanguagesValue.md) | Languages spoken at the property. | [optional] |
| **multi_unit** | **Boolean** | Boolean value indicating if a property is a multi-unit property. | [optional] |
| **payment_registration_recommended** | **Boolean** | Boolean value indicating if a property may require payment registration to process payments, even when using the property_collect Business Model. If true, then a property may not be successfully bookable without registering payments first. | [optional] |
| **vacation_rental_details** | [**GetPropertyContent200ResponseValueVacationRentalDetails**](GetPropertyContent200ResponseValueVacationRentalDetails.md) |  | [optional] |
| **supply_source** | **String** | The supply source of the property. | [optional] |
| **registry_number** | **String** | The property&#39;s registry number required by some jurisdictions. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValue.new(
  property_id: null,
  name: null,
  address: null,
  ratings: null,
  location: null,
  phone: null,
  fax: null,
  category: null,
  business_model: null,
  rank: null,
  checkin: null,
  checkout: null,
  fees: null,
  policies: null,
  attributes: null,
  amenities: null,
  images: null,
  onsite_payments: null,
  rooms: null,
  rates: null,
  dates: null,
  descriptions: null,
  statistics: null,
  airports: null,
  themes: null,
  all_inclusive: null,
  tax_id: null,
  chain: null,
  brand: null,
  spoken_languages: null,
  multi_unit: null,
  payment_registration_recommended: null,
  vacation_rental_details: null,
  supply_source: null,
  registry_number: null
)
```

