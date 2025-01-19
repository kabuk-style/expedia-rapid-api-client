# ExpediaRapid::GeographyApi

All URIs are relative to *https://test.ean.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_region**](GeographyApi.md#get_region) | **GET** /regions/{region_id} | Region |
| [**get_regions**](GeographyApi.md#get_regions) | **GET** /regions | Regions |
| [**post_geography**](GeographyApi.md#post_geography) | **POST** /properties/geography | Properties within Polygon |


## get_region

> <GetRegions200ResponseInner> get_region(accept, accept_encoding, user_agent, region_id, language, include, opts)

Region

Returns the geographic definition and property mappings for the requested Region ID. The response is a single JSON formatted region object. 

### Examples

```ruby
require 'time'
require 'expedia_rapid'
# setup authorization
ExpediaRapid.configure do |config|
  # Configure API key authorization: rapidAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ExpediaRapid::GeographyApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
region_id = '178248' # String | ID of the region to retrieve. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. See [https://www.w3.org/International/articles/language-tags/](https://www.w3.org/International/articles/language-tags/)  Language Options: [https://developers.expediagroup.com/docs/rapid/resources/reference/language-options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
include = ['details'] # Array<String> | Options for which content to return in the response. This parameter can be supplied multiple times with different values. The value must be lower case.   * details - Include the metadata, coordinates and full hierarchy of the region.   * property_ids - Include the list of property IDs within the bounding polygon of the region.   * property_ids_expanded - Include the list of property IDs within the bounding polygon of the region and property IDs from the surrounding area if minimal properties are within the region. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  supply_source: 'supply_source_example', # String | Options for which supply source you would like returned in the geography response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * `expedia` - Standard Expedia supply.   * `vrbo` - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Region
  result = api_instance.get_region(accept, accept_encoding, user_agent, region_id, language, include, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling GeographyApi->get_region: #{e}"
end
```

#### Using the get_region_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRegions200ResponseInner>, Integer, Hash)> get_region_with_http_info(accept, accept_encoding, user_agent, region_id, language, include, opts)

```ruby
begin
  # Region
  data, status_code, headers = api_instance.get_region_with_http_info(accept, accept_encoding, user_agent, region_id, language, include, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRegions200ResponseInner>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling GeographyApi->get_region_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **region_id** | **String** | ID of the region to retrieve.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. See [https://www.w3.org/International/articles/language-tags/](https://www.w3.org/International/articles/language-tags/)  Language Options: [https://developers.expediagroup.com/docs/rapid/resources/reference/language-options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **include** | [**Array&lt;String&gt;**](String.md) | Options for which content to return in the response. This parameter can be supplied multiple times with different values. The value must be lower case.   * details - Include the metadata, coordinates and full hierarchy of the region.   * property_ids - Include the list of property IDs within the bounding polygon of the region.   * property_ids_expanded - Include the list of property IDs within the bounding polygon of the region and property IDs from the surrounding area if minimal properties are within the region.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **supply_source** | **String** | Options for which supply source you would like returned in the geography response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * &#x60;expedia&#x60; - Standard Expedia supply.   * &#x60;vrbo&#x60; - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**GetRegions200ResponseInner**](GetRegions200ResponseInner.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_regions

> <Array<GetRegions200ResponseInner>> get_regions(accept, accept_encoding, user_agent, include, language, opts)

Regions

Returns the geographic definition and property mappings of regions matching the specified parameters.<br><br> To request all regions in the world, omit the `ancestor` query parameter. To request all regions in a specific continent, country or other level, specify the ID of that region as the `ancestor`. Refer to the list of [top level regions](https://developers.expediagroup.com/docs/rapid/lodging/geography/geography-reference-lists). <br><br> The response is a paginated list of regions. See the `Link` header in the 200 response section. 

### Examples

```ruby
require 'time'
require 'expedia_rapid'
# setup authorization
ExpediaRapid.configure do |config|
  # Configure API key authorization: rapidAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ExpediaRapid::GeographyApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
include = ['standard'] # Array<String> | Options for which content to return in the response. This parameter can be supplied multiple times with different values. The standard and details options cannot be requested together. The value must be lower case.   * standard - Include the metadata and basic hierarchy of each region.   * details - Include the metadata, coordinates and full hierarchy of each region.   * property_ids - Include the list of property IDs within the bounding polygon of each region.   * property_ids_expanded - Include the list of property IDs within the bounding polygon of each region and     property IDs from the surrounding area if minimal properties are within the region. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  ancestor_id: 'ancestor_id_example', # String | Search for regions whose ancestors include the requested ancestor region ID. Refer to the list of [top level regions](https://developers.expediagroup.com/docs/rapid/lodging/geography/geography-reference-lists). 
  area: 'area_example', # String | Filter the results to regions that intersect with a specified area.<br><br> The area may be defined in one of two ways:   * radius,region_id   * radius,latitude,longitude  Radius combined with region id would search an area that extends the number of kilometers out from the boundaries of the region in all directions.<br> Radius combined with a single point, specified by a latitude, longitude pair would search an area in a circle with the specified radius and the point as the center.<br> Radius should be specified in non-negative whole kilometers, decimals will return an error. A radius of 0 is allowed.<br> When specifying the area parameter, there will be a limit of 100 results, which can be narrowed further by the limit parameter.<br> Due to the number of results, unless `point_of_interest` is specified as the only type, regions of type `point_of_interest` will not be included in a request that filters to an area.<br><br> An example use case would be searching for the closest 3 airports within 50 kilometers of a specified point.<br>   `&type=airport&limit=3&area=50,37.227924,-93.310036` 
  country_code: ['inner_example'], # Array<String> | Filter the results to a specified ISO 3166-1 alpha-2 country code.  For more information see: [https://www.iso.org/obp/ui/#search/code/](https://www.iso.org/obp/ui/#search/code/) 
  country_subdivision_code: ['inner_example'], # Array<String> | Filter the results down to only the ISO 3166-2 country subdivision.
  iata_location_code: 'iata_location_code_example', # String | Search for regions by the requested 3-character IATA location code, which will apply to both iata_airport_code and iata_airport_metro_code. The code must be upper case. 
  limit: 8.14, # Float | Limit the number of results returned. Using the area parameter will impose a max value of 100 for this whether specified or not. 
  supply_source: 'supply_source_example', # String | Options for which supply source you would like returned in the geography response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * `expedia` - Standard Expedia supply.   * `vrbo` - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information. 
  type: ['inner_example'], # Array<String> | Filter the results to a specified region type. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Regions
  result = api_instance.get_regions(accept, accept_encoding, user_agent, include, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling GeographyApi->get_regions: #{e}"
end
```

#### Using the get_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRegions200ResponseInner>>, Integer, Hash)> get_regions_with_http_info(accept, accept_encoding, user_agent, include, language, opts)

```ruby
begin
  # Regions
  data, status_code, headers = api_instance.get_regions_with_http_info(accept, accept_encoding, user_agent, include, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRegions200ResponseInner>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling GeographyApi->get_regions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **include** | [**Array&lt;String&gt;**](String.md) | Options for which content to return in the response. This parameter can be supplied multiple times with different values. The standard and details options cannot be requested together. The value must be lower case.   * standard - Include the metadata and basic hierarchy of each region.   * details - Include the metadata, coordinates and full hierarchy of each region.   * property_ids - Include the list of property IDs within the bounding polygon of each region.   * property_ids_expanded - Include the list of property IDs within the bounding polygon of each region and     property IDs from the surrounding area if minimal properties are within the region.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **ancestor_id** | **String** | Search for regions whose ancestors include the requested ancestor region ID. Refer to the list of [top level regions](https://developers.expediagroup.com/docs/rapid/lodging/geography/geography-reference-lists).  | [optional] |
| **area** | **String** | Filter the results to regions that intersect with a specified area.&lt;br&gt;&lt;br&gt; The area may be defined in one of two ways:   * radius,region_id   * radius,latitude,longitude  Radius combined with region id would search an area that extends the number of kilometers out from the boundaries of the region in all directions.&lt;br&gt; Radius combined with a single point, specified by a latitude, longitude pair would search an area in a circle with the specified radius and the point as the center.&lt;br&gt; Radius should be specified in non-negative whole kilometers, decimals will return an error. A radius of 0 is allowed.&lt;br&gt; When specifying the area parameter, there will be a limit of 100 results, which can be narrowed further by the limit parameter.&lt;br&gt; Due to the number of results, unless &#x60;point_of_interest&#x60; is specified as the only type, regions of type &#x60;point_of_interest&#x60; will not be included in a request that filters to an area.&lt;br&gt;&lt;br&gt; An example use case would be searching for the closest 3 airports within 50 kilometers of a specified point.&lt;br&gt;   &#x60;&amp;type&#x3D;airport&amp;limit&#x3D;3&amp;area&#x3D;50,37.227924,-93.310036&#x60;  | [optional] |
| **country_code** | [**Array&lt;String&gt;**](String.md) | Filter the results to a specified ISO 3166-1 alpha-2 country code.  For more information see: [https://www.iso.org/obp/ui/#search/code/](https://www.iso.org/obp/ui/#search/code/)  | [optional] |
| **country_subdivision_code** | [**Array&lt;String&gt;**](String.md) | Filter the results down to only the ISO 3166-2 country subdivision. | [optional] |
| **iata_location_code** | **String** | Search for regions by the requested 3-character IATA location code, which will apply to both iata_airport_code and iata_airport_metro_code. The code must be upper case.  | [optional] |
| **limit** | **Float** | Limit the number of results returned. Using the area parameter will impose a max value of 100 for this whether specified or not.  | [optional] |
| **supply_source** | **String** | Options for which supply source you would like returned in the geography response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * &#x60;expedia&#x60; - Standard Expedia supply.   * &#x60;vrbo&#x60; - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information.  | [optional] |
| **type** | [**Array&lt;String&gt;**](String.md) | Filter the results to a specified region type.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Array&lt;GetRegions200ResponseInner&gt;**](GetRegions200ResponseInner.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_geography

> <Hash<String, PostGeography200ResponseValue>> post_geography(accept, accept_encoding, user_agent, include, supply_source, post_geography_request, opts)

Properties within Polygon

Returns the properties within an custom polygon that represents a multi-city area or smaller. The coordinates of the polygon should be in [GeoJSON format](https://tools.ietf.org/html/rfc7946) and the polygon must conform to the following restrictions:   * Polygon size - diagonal distance of the polygon must be less than 500km   * Polygon type - only single polygons are supported   * Number of coordinates - must be <= 2000 

### Examples

```ruby
require 'time'
require 'expedia_rapid'
# setup authorization
ExpediaRapid.configure do |config|
  # Configure API key authorization: rapidAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = ExpediaRapid::GeographyApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
include = 'property_ids' # String | Options for which content to return in the response. The value must be lower case.   * property_ids - Include the property IDs. 
supply_source = 'expedia' # String | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * `expedia` - Standard Expedia supply.   * `vrbo` - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information. 
post_geography_request = ExpediaRapid::PostGeographyRequest.new({type: 'type_example', coordinates: [[[3.56]]]}) # PostGeographyRequest | 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Properties within Polygon
  result = api_instance.post_geography(accept, accept_encoding, user_agent, include, supply_source, post_geography_request, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling GeographyApi->post_geography: #{e}"
end
```

#### Using the post_geography_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, PostGeography200ResponseValue>>, Integer, Hash)> post_geography_with_http_info(accept, accept_encoding, user_agent, include, supply_source, post_geography_request, opts)

```ruby
begin
  # Properties within Polygon
  data, status_code, headers = api_instance.post_geography_with_http_info(accept, accept_encoding, user_agent, include, supply_source, post_geography_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, PostGeography200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling GeographyApi->post_geography_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **include** | **String** | Options for which content to return in the response. The value must be lower case.   * property_ids - Include the property IDs.  |  |
| **supply_source** | **String** | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * &#x60;expedia&#x60; - Standard Expedia supply.   * &#x60;vrbo&#x60; - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information.  |  |
| **post_geography_request** | [**PostGeographyRequest**](PostGeographyRequest.md) |  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, PostGeography200ResponseValue&gt;**](PostGeography200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

