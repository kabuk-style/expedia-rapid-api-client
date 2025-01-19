# ExpediaRapid::GetPropertyContent200ResponseValueRatesValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for a rate. | [optional] |
| **amenities** | [**Hash&lt;String, GetPropertyContent200ResponseValueAmenitiesValue&gt;**](GetPropertyContent200ResponseValueAmenitiesValue.md) | This lists all of the Amenities available with a specific rate, including value adds, such as breakfast. See our [amenities reference](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists) for current known amenity ID and name values. | [optional] |
| **special_offer_description** | **String** | A text description of any special offers for this rate. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetPropertyContent200ResponseValueRatesValue.new(
  id: null,
  amenities: null,
  special_offer_description: null
)
```

