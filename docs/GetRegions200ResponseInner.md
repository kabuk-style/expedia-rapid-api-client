# ExpediaRapid::GetRegions200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Region Id. | [optional] |
| **type** | **String** | Region type. | [optional] |
| **name** | **String** | Region name. | [optional] |
| **name_full** | **String** | Full region name. | [optional] |
| **descriptor** | **String** | Specific information about the region e.g. whether it covers surrounding areas for a city. Only present when relevant for a region. See our [region descriptors reference](https://developers.expediagroup.com/docs/rapid/lodging/geography/geography-reference-lists) for current known descriptor values. | [optional] |
| **iata_airport_code** | **String** | 3-character IATA airport code. | [optional] |
| **iata_airport_metro_code** | **String** | 3-character IATA airport metropolitan code of the metropolitan airport area. | [optional] |
| **country_code** | **String** | Region country code (ISO 3166-1 alpha-2). | [optional] |
| **country_subdivision_code** | **String** | Region country subdivision code (ISO 3166-2). | [optional] |
| **coordinates** | [**GetRegions200ResponseInnerCoordinates**](GetRegions200ResponseInnerCoordinates.md) |  | [optional] |
| **associations** | **Hash&lt;String, Array&lt;String&gt;&gt;** | A map of region types to a sorted array of region ids with a touristic association to the region. | [optional] |
| **ancestors** | [**Array&lt;GetRegions200ResponseInnerAncestorsInner&gt;**](GetRegions200ResponseInnerAncestorsInner.md) | An array of the region&#39;s ancestors. | [optional] |
| **descendants** | **Hash&lt;String, Array&lt;String&gt;&gt;** | A map of region types to an array of region ids. The region ids are direct descendants of the region. | [optional] |
| **property_ids** | **Array&lt;String&gt;** | An array of associated property ids for the region. | [optional] |
| **property_ids_expanded** | **Array&lt;String&gt;** | An array of associated property ids within an expanded radius for the region. | [optional] |
| **categories** | **Array&lt;String&gt;** | A list of regional categories. | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of regional tags. | [optional] |

## Example

```ruby
require 'expedia_rapid'

instance = ExpediaRapid::GetRegions200ResponseInner.new(
  id: null,
  type: null,
  name: null,
  name_full: null,
  descriptor: null,
  iata_airport_code: null,
  iata_airport_metro_code: null,
  country_code: null,
  country_subdivision_code: null,
  coordinates: null,
  associations: null,
  ancestors: null,
  descendants: null,
  property_ids: null,
  property_ids_expanded: null,
  categories: null,
  tags: null
)
```

