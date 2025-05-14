# ExpediaRapid::ContentApi

All URIs are relative to *https://test.ean.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_amenities_reference**](ContentApi.md#get_amenities_reference) | **GET** /references/amenities | Amenities Reference |
| [**get_categories_reference**](ContentApi.md#get_categories_reference) | **GET** /references/categories | Categories Reference |
| [**get_chain_reference**](ContentApi.md#get_chain_reference) | **GET** /chains | Chain Reference ***DEPRECATED*** |
| [**get_chains_reference**](ContentApi.md#get_chains_reference) | **GET** /references/chains | Chains Reference |
| [**get_general_attributes_reference**](ContentApi.md#get_general_attributes_reference) | **GET** /references/general-attributes | General Attributes Reference |
| [**get_images_reference**](ContentApi.md#get_images_reference) | **GET** /references/images | Images Reference |
| [**get_inactive_properties**](ContentApi.md#get_inactive_properties) | **GET** /properties/inactive | Inactive Properties |
| [**get_onsite_payment_types_reference**](ContentApi.md#get_onsite_payment_types_reference) | **GET** /references/onsite-payment-types | Onsite Payment Types Reference |
| [**get_pet_attributes_reference**](ContentApi.md#get_pet_attributes_reference) | **GET** /references/pet-attributes | Pet Attributes Reference |
| [**get_property_catalog_file**](ContentApi.md#get_property_catalog_file) | **GET** /files/properties/catalog | Property Catalog File |
| [**get_property_content**](ContentApi.md#get_property_content) | **GET** /properties/content | Property Content |
| [**get_property_content_file**](ContentApi.md#get_property_content_file) | **GET** /files/properties/content | Property Content File |
| [**get_property_guest_reviews**](ContentApi.md#get_property_guest_reviews) | **GET** /properties/{property_id}/guest-reviews | Property Guest Reviews |
| [**get_rate_amenities_reference**](ContentApi.md#get_rate_amenities_reference) | **GET** /references/rate-amenities | Rate Amenities Reference |
| [**get_room_amenities_reference**](ContentApi.md#get_room_amenities_reference) | **GET** /references/room-amenities | Room Amenities Reference |
| [**get_room_images_reference**](ContentApi.md#get_room_images_reference) | **GET** /references/room-images | Room Images Reference |
| [**get_room_views_reference**](ContentApi.md#get_room_views_reference) | **GET** /references/room-views | Room Views Reference |
| [**get_spoken_languages_reference**](ContentApi.md#get_spoken_languages_reference) | **GET** /references/spoken-languages | Spoken Languages Reference |
| [**get_statistics_reference**](ContentApi.md#get_statistics_reference) | **GET** /references/statistics | Statistics Reference |
| [**get_themes_reference**](ContentApi.md#get_themes_reference) | **GET** /references/themes | Themes Reference |


## get_amenities_reference

> <Hash<String, GetAmenitiesReference200ResponseValue>> get_amenities_reference(accept, accept_encoding, user_agent, language, opts)

Amenities Reference

Returns a complete collection of amenities available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Amenities Reference
  result = api_instance.get_amenities_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_amenities_reference: #{e}"
end
```

#### Using the get_amenities_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetAmenitiesReference200ResponseValue>>, Integer, Hash)> get_amenities_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Amenities Reference
  data, status_code, headers = api_instance.get_amenities_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetAmenitiesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_amenities_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetAmenitiesReference200ResponseValue&gt;**](GetAmenitiesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_categories_reference

> <Hash<String, GetPropertyContent200ResponseValueCategory>> get_categories_reference(accept, accept_encoding, user_agent, language, opts)

Categories Reference

Returns a complete collection of categories available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Categories Reference
  result = api_instance.get_categories_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_categories_reference: #{e}"
end
```

#### Using the get_categories_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueCategory>>, Integer, Hash)> get_categories_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Categories Reference
  data, status_code, headers = api_instance.get_categories_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueCategory>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_categories_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueCategory&gt;**](GetPropertyContent200ResponseValueCategory.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chain_reference

> <Hash<String, GetPropertyContent200ResponseValueChain>> get_chain_reference(accept, accept_encoding, user_agent, opts)

Chain Reference ***DEPRECATED***

***DEPRECATED*** Please use `/references/chains` <br>Returns a complete collection of chains recognized by the Rapid API. <br>Chains represent a parent company which can have multiple brands associated with it. A brand can only be associated with one chain. For example, Hilton Worldwide is a chain that has multiple associated brands including DoubleTree, Hampton Inn and Embassy Suites. <br>The response is a JSON map where the key is the chain ID and the value is a chain object. Each chain object also contains a map of its related brands. <br>Note that the set of chain IDs and brand IDs are totally independent of one another. It is possible for a chain and a brand to both use the same number as their ID, but this is just a coincidence that holds no meaning. <br>Chain and brand names are provided in English only. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Chain Reference ***DEPRECATED***
  result = api_instance.get_chain_reference(accept, accept_encoding, user_agent, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_chain_reference: #{e}"
end
```

#### Using the get_chain_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueChain>>, Integer, Hash)> get_chain_reference_with_http_info(accept, accept_encoding, user_agent, opts)

```ruby
begin
  # Chain Reference ***DEPRECATED***
  data, status_code, headers = api_instance.get_chain_reference_with_http_info(accept, accept_encoding, user_agent, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueChain>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_chain_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueChain&gt;**](GetPropertyContent200ResponseValueChain.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chains_reference

> <Hash<String, GetPropertyContent200ResponseValueChain>> get_chains_reference(accept, accept_encoding, user_agent, opts)

Chains Reference

Returns a complete collection of chains recognized by the Rapid API. <br>Chains represent a parent company which can have multiple brands associated with it. A brand can only be associated with one chain. For example, Hilton Worldwide is a chain that has multiple associated brands including DoubleTree, Hampton Inn and Embassy Suites. <br>The response is a JSON map where the key is the chain ID and the value is a chain object. Each chain object also contains a map of its related brands. <br>Note that the set of chain IDs and brand IDs are totally independent of one another. It is possible for a chain and a brand to both use the same number as their ID, but this is just a coincidence that holds no meaning. <br>Chain and brand names are provided in English only. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Chains Reference
  result = api_instance.get_chains_reference(accept, accept_encoding, user_agent, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_chains_reference: #{e}"
end
```

#### Using the get_chains_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueChain>>, Integer, Hash)> get_chains_reference_with_http_info(accept, accept_encoding, user_agent, opts)

```ruby
begin
  # Chains Reference
  data, status_code, headers = api_instance.get_chains_reference_with_http_info(accept, accept_encoding, user_agent, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueChain>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_chains_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueChain&gt;**](GetPropertyContent200ResponseValueChain.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_general_attributes_reference

> <Hash<String, GetGeneralAttributesReference200ResponseValue>> get_general_attributes_reference(accept, accept_encoding, user_agent, language, opts)

General Attributes Reference

Returns a complete collection of general attributes available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # General Attributes Reference
  result = api_instance.get_general_attributes_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_general_attributes_reference: #{e}"
end
```

#### Using the get_general_attributes_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetGeneralAttributesReference200ResponseValue>>, Integer, Hash)> get_general_attributes_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # General Attributes Reference
  data, status_code, headers = api_instance.get_general_attributes_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetGeneralAttributesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_general_attributes_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetGeneralAttributesReference200ResponseValue&gt;**](GetGeneralAttributesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_images_reference

> <Hash<String, GetImagesReference200ResponseValue>> get_images_reference(accept, accept_encoding, user_agent, language, opts)

Images Reference

Returns a complete collection of images available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Images Reference
  result = api_instance.get_images_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_images_reference: #{e}"
end
```

#### Using the get_images_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetImagesReference200ResponseValue>>, Integer, Hash)> get_images_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Images Reference
  data, status_code, headers = api_instance.get_images_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetImagesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_images_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetImagesReference200ResponseValue&gt;**](GetImagesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inactive_properties

> <Array<GetInactiveProperties200ResponseInner>> get_inactive_properties(accept, accept_encoding, user_agent, opts)

Inactive Properties

Request a list of properties that are inactive because they have been removed from sale since a specified date.<br><br> When there are a large number of properties in the response, it will be paginated. See the `Link` header in the 200 response section. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  since: '2023-09-20', # String | Required on initial call, not accepted on subsequent paging links provided in response header.<br> The earliest date that a property became inactive to include in the results. ISO 8601 format (YYYY-MM-DD) 
  token: 'token_example', # String | Only used for requesting additional pages of data. Provided by the `next` URL in the `Link` response header. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Inactive Properties
  result = api_instance.get_inactive_properties(accept, accept_encoding, user_agent, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_inactive_properties: #{e}"
end
```

#### Using the get_inactive_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetInactiveProperties200ResponseInner>>, Integer, Hash)> get_inactive_properties_with_http_info(accept, accept_encoding, user_agent, opts)

```ruby
begin
  # Inactive Properties
  data, status_code, headers = api_instance.get_inactive_properties_with_http_info(accept, accept_encoding, user_agent, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetInactiveProperties200ResponseInner>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_inactive_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **since** | **String** | Required on initial call, not accepted on subsequent paging links provided in response header.&lt;br&gt; The earliest date that a property became inactive to include in the results. ISO 8601 format (YYYY-MM-DD)  | [optional] |
| **token** | **String** | Only used for requesting additional pages of data. Provided by the &#x60;next&#x60; URL in the &#x60;Link&#x60; response header.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Array&lt;GetInactiveProperties200ResponseInner&gt;**](GetInactiveProperties200ResponseInner.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_onsite_payment_types_reference

> <Hash<String, GetPropertyContent200ResponseValueOnsitePaymentsTypesValue>> get_onsite_payment_types_reference(accept, accept_encoding, user_agent, language, opts)

Onsite Payment Types Reference

Returns a complete collection of onsite payment types available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Onsite Payment Types Reference
  result = api_instance.get_onsite_payment_types_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_onsite_payment_types_reference: #{e}"
end
```

#### Using the get_onsite_payment_types_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueOnsitePaymentsTypesValue>>, Integer, Hash)> get_onsite_payment_types_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Onsite Payment Types Reference
  data, status_code, headers = api_instance.get_onsite_payment_types_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueOnsitePaymentsTypesValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_onsite_payment_types_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueOnsitePaymentsTypesValue&gt;**](GetPropertyContent200ResponseValueOnsitePaymentsTypesValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pet_attributes_reference

> <Hash<String, GetGeneralAttributesReference200ResponseValue>> get_pet_attributes_reference(accept, accept_encoding, user_agent, language, opts)

Pet Attributes Reference

Returns a complete collection of pet attributes available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Pet Attributes Reference
  result = api_instance.get_pet_attributes_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_pet_attributes_reference: #{e}"
end
```

#### Using the get_pet_attributes_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetGeneralAttributesReference200ResponseValue>>, Integer, Hash)> get_pet_attributes_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Pet Attributes Reference
  data, status_code, headers = api_instance.get_pet_attributes_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetGeneralAttributesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_pet_attributes_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetGeneralAttributesReference200ResponseValue&gt;**](GetGeneralAttributesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_catalog_file

> <GetPropertyContent200ResponseValueAddressLocalizedLinksValue> get_property_catalog_file(accept, accept_encoding, user_agent, language, supply_source, opts)

Property Catalog File

Returns a link to download the master list of EPS's active properties in the requested language. The response includes high-level details about each property.  <br>This file is in JSONL format and is gzipped. The schema of each JSON object in the JSONL file is a subset of the schema of each JSON object from the Property Content call. The subset of fields included are:    * property_id   * name   * address   * ratings   * location   * phone   * fax   * category   * rank   * business_model   * dates   * statistics   * chain   * brand   * supply_source  <br>Example of a JSONL file with 2 properties: ``` {\"property_id\":\"12345\",\"name\":\"Test Property Name\",\"address\":{\"line_1\":\"123 Main St\",\"line_2\":\"Apt A\",\"city\":\"Springfield\",\"state_province_code\":\"MO\",\"state_province_name\":\"Missouri\",\"postal_code\":\"65804\",\"country_code\":\"US\",\"obfuscation_required\":false,\"localized\":{\"links\":{\"es-ES\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=es-ES&include=address&property_id=12345\"},\"fr-FR\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=fr-FR&include=address&property_id=12345\"}}}},\"ratings\":{\"property\":{\"rating\":\"3.5\",\"type\":\"Star\"},\"guest\":{\"count\":48382,\"overall\":\"3.1\",\"cleanliness\":\"4.2\",\"service\":\"1.1\",\"comfort\":\"4.3\",\"condition\":\"1.6\",\"location\":\"4.0\",\"neighborhood\":\"3.4\",\"quality\":\"3.4\",\"value\":\"2.2\",\"amenities\":\"1.4\",\"recommendation_percent\":\"73%\"}},\"location\":{\"coordinates\":{\"latitude\":37.15845,\"longitude\":-93.26838}},\"phone\":\"1-417-862-0153\",\"fax\":\"1-417-863-7249\",\"category\":{\"id\":\"1\",\"name\":\"Hotel\"},\"rank\":42,\"business_model\":{\"expedia_collect\":true,\"property_collect\":false,\"updated_expedia_collect\":true},\"dates\":{\"added\":\"1998-07-19T05:00:00.000Z\",\"updated\":\"2018-03-22T07:23:14.000Z\"},\"statistics\":{\"52\":{\"id\":\"52\",\"name\":\"Total number of rooms - 820\",\"value\":\"820\"},\"54\":{\"id\":\"54\",\"name\":\"Number of floors - 38\",\"value\":\"38\"}},\"chain\":{\"id\":\"-6\",\"name\":\"Hyatt Hotels\"},\"brand\":{\"id\":\"2209\",\"name\":\"Hyatt Place\"},\"supply_source\":\"expedia\"} {\"property_id\":\"67890\",\"name\":\"Test Property Name 2\",\"address\":{\"line_1\":\"123 Main St\",\"line_2\":\"Apt A\",\"city\":\"Springfield\",\"state_province_code\":\"MO\",\"state_province_name\":\"Missouri\",\"postal_code\":\"65804\",\"country_code\":\"US\",\"obfuscation_required\":true,\"localized\":{\"links\":{\"es-ES\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=es-ES&include=address&property_id=67890\"},\"de-DE\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=de-DE&include=address&property_id=67890\"}}}},\"ratings\":{\"property\":{\"rating\":\"3.5\",\"type\":\"Star\"},\"guest\":{\"count\":7651,\"overall\":\"4.3\",\"cleanliness\":\"4.2\",\"service\":\"1.1\",\"comfort\":\"4.3\",\"condition\":\"1.6\",\"location\":\"4.0\",\"neighborhood\":\"3.4\",\"quality\":\"3.4\",\"value\":\"2.2\",\"amenities\":\"1.4\",\"recommendation_percent\":\"80%\"}},\"location\":{\"coordinates\":{\"latitude\":37.15845,\"longitude\":-93.26838}},\"phone\":\"1-417-862-0153\",\"fax\":\"1-417-863-7249\",\"category\":{\"id\":\"1\",\"name\":\"Hotel\"},\"rank\":42,\"business_model\":{\"expedia_collect\":true,\"property_collect\":true,\"updated_expedia_collect\":false},\"dates\":{\"added\":\"1998-07-20T05:00:00.000Z\",\"updated\":\"2018-03-22T13:33:17.000Z\"},\"statistics\":{\"52\":{\"id\":\"52\",\"name\":\"Total number of rooms - 820\",\"value\":\"820\"},\"54\":{\"id\":\"54\",\"name\":\"Number of floors - 38\",\"value\":\"38\"}},\"chain\":{\"id\":\"-5\",\"name\":\"Hilton Worldwide\"},\"brand\":{\"id\":\"358\",\"name\":\"Hampton Inn\"},\"supply_source\":\"expedia\"} ``` 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. See [https://www.w3.org/International/articles/language-tags/](https://www.w3.org/International/articles/language-tags/)  Language Options: [https://developers.expediagroup.com/docs/rapid/resources/reference/language-options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
supply_source = 'expedia' # String | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * `expedia` - Standard Expedia supply.   * `vrbo` - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Property Catalog File
  result = api_instance.get_property_catalog_file(accept, accept_encoding, user_agent, language, supply_source, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_catalog_file: #{e}"
end
```

#### Using the get_property_catalog_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPropertyContent200ResponseValueAddressLocalizedLinksValue>, Integer, Hash)> get_property_catalog_file_with_http_info(accept, accept_encoding, user_agent, language, supply_source, opts)

```ruby
begin
  # Property Catalog File
  data, status_code, headers = api_instance.get_property_catalog_file_with_http_info(accept, accept_encoding, user_agent, language, supply_source, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPropertyContent200ResponseValueAddressLocalizedLinksValue>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_catalog_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. See [https://www.w3.org/International/articles/language-tags/](https://www.w3.org/International/articles/language-tags/)  Language Options: [https://developers.expediagroup.com/docs/rapid/resources/reference/language-options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **supply_source** | **String** | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * &#x60;expedia&#x60; - Standard Expedia supply.   * &#x60;vrbo&#x60; - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_content

> <Hash<String, GetPropertyContent200ResponseValue>> get_property_content(accept, accept_encoding, user_agent, language, supply_source, opts)

Property Content

Search property content for active properties in the requested language.<br><br> When searching with query parameter, `property_id`, you may request 1 to 250 properties at a time.<br><br> When searching with query parameters other than `property_id`, the response will be paginated. See the `Link` header in the 200 response section.<br><br> The response is a JSON map where the key is the property ID and the value is the property object itself, which can include property-level, room-level and rate-level information. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
supply_source = 'expedia' # String | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * `expedia` - Standard Expedia supply.   * `vrbo` - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  all_inclusive: ['inner_example'], # Array<String> | Search to include properties that have the requested `all_inclusive` values equal to true. If this parameter is not supplied, all `all_inclusive` scenarios are included. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested scenarios.   * `all_rate_plans` - Return properties where `all_inclusive.all_rate_plans` is true.   * `some_rate_plans` = Return properties where `all_inclusive.some_rate_plans` is true. 
  amenity_id: ['inner_example'], # Array<String> | The ID of the amenity you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested amenity IDs. This is currently only capable of searching for property level amenities. Room and rate level amenities cannot be searched on. 
  attribute_id: ['inner_example'], # Array<String> | The ID of the attribute you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested attribute IDs. 
  brand_id: ['inner_example'], # Array<String> | The ID of the brand you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested brand IDs. 
  business_model: ['expedia_collect'], # Array<String> | Search for properties with the requested business model enabled. This parameter can be supplied multiple times with different values, which will return all properties that match any of the requested business models. The value must be lower case.   * `expedia_collect` - Return only properties where the payment is collected by Expedia.   * `property_collect` - Return only properties where the payment is collected at the property. 
  category_id: ['inner_example'], # Array<String> | Search to include properties that have the requested [category ID](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists). If this parameter is not supplied, all category IDs are included. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested category IDs. 
  category_id_exclude: ['inner_example'], # Array<String> | Search to exclude properties that do not have the requested [category ID](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists). If this parameter is not supplied, all category IDs are included. This parameter can be supplied multiple times with different values, which will exclude properties that match any of the requested category IDs. 
  chain_id: ['inner_example'], # Array<String> | The ID of the chain you want to search for. These chain IDs can be positive and negative numbers. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested chain IDs. 
  country_code: ['inner_example'], # Array<String> | Search for properties with the requested country code, in ISO 3166-1 alpha-2 format. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested country codes. 
  date_added_end: 'date_added_end_example', # String | Search for properties added on or before the requested UTC date, in ISO 8601 format (YYYY-MM-DD) 
  date_added_start: 'date_added_start_example', # String | Search for properties added on or after the requested UTC date, in ISO 8601 format (YYYY-MM-DD) 
  date_updated_end: 'date_updated_end_example', # String | Search for properties updated on or before the requested UTC date, in ISO 8601 format (YYYY-MM-DD) 
  date_updated_start: 'date_updated_start_example', # String | Search for properties updated on or after the requested UTC date, in ISO 8601 format (YYYY-MM-DD) 
  include: ['inner_example'], # Array<String> | Each time this parameter is specified will add to the list of fields and associated objects returned in the response. All values and field names are lower case. The values `property_ids` and `catalog` will continue to behave as specified below for backwards compatibility. All other top level field names will add the specified field to the list of fields returned in the response. See the response schema for a full list of top level field names. Additionally, the field `property_id` will always be returned regardless of what include values are passed.<br><br> Possible values:  * `property_ids` - ***DEPRECATED*** - Please use `property_id` which matches the response field name.  * `catalog` - Include all property catalog fields. See     [Property Catalog File endpoint](https://developers.expediagroup.com/docs/rapid/resources/rapid-api#get-/files/properties/catalog) for a list of fields.  * `property_id` - Passing in the value `property_id` and no other values will limit the response to only      `property_id`. Not necessary to include in combination with other field name values, as it will always      be returned.  * All field names found at the top level of the property content response are now valid values for     inclusion. 
  multi_unit: true, # Boolean | Search for multi-unit properties. If this parameter is not supplied, both single-unit and multi-unit properties will be included.   * `true` - Include only properties that are multi-unit.   * `false` - Do not include properties that are multi-unit. 
  property_id: ['inner_example'], # Array<String> | The ID of the property you want to search for. You can provide 1 to 250 property_id parameters. 
  property_rating_max: 'property_rating_max_example', # String | Search for properties with a property rating less than or equal to the requested rating. The highest property rating value is 5.0. 
  property_rating_min: 'property_rating_min_example', # String | Search for properties with a property rating greater than or equal to the requested rating. The lowest property rating value is 0.0. 
  spoken_language_id: ['inner_example'], # Array<String> | The id of the spoken language you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested spoken languages. The language code as a subset of BCP47 format. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  token: 'token_example', # String | Only used for requesting additional pages of data. Provided by the `next` URL in the `Link` response header. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Property Content
  result = api_instance.get_property_content(accept, accept_encoding, user_agent, language, supply_source, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_content: #{e}"
end
```

#### Using the get_property_content_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValue>>, Integer, Hash)> get_property_content_with_http_info(accept, accept_encoding, user_agent, language, supply_source, opts)

```ruby
begin
  # Property Content
  data, status_code, headers = api_instance.get_property_content_with_http_info(accept, accept_encoding, user_agent, language, supply_source, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_content_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **supply_source** | **String** | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * &#x60;expedia&#x60; - Standard Expedia supply.   * &#x60;vrbo&#x60; - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **all_inclusive** | [**Array&lt;String&gt;**](String.md) | Search to include properties that have the requested &#x60;all_inclusive&#x60; values equal to true. If this parameter is not supplied, all &#x60;all_inclusive&#x60; scenarios are included. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested scenarios.   * &#x60;all_rate_plans&#x60; - Return properties where &#x60;all_inclusive.all_rate_plans&#x60; is true.   * &#x60;some_rate_plans&#x60; &#x3D; Return properties where &#x60;all_inclusive.some_rate_plans&#x60; is true.  | [optional] |
| **amenity_id** | [**Array&lt;String&gt;**](String.md) | The ID of the amenity you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested amenity IDs. This is currently only capable of searching for property level amenities. Room and rate level amenities cannot be searched on.  | [optional] |
| **attribute_id** | [**Array&lt;String&gt;**](String.md) | The ID of the attribute you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested attribute IDs.  | [optional] |
| **brand_id** | [**Array&lt;String&gt;**](String.md) | The ID of the brand you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested brand IDs.  | [optional] |
| **business_model** | [**Array&lt;String&gt;**](String.md) | Search for properties with the requested business model enabled. This parameter can be supplied multiple times with different values, which will return all properties that match any of the requested business models. The value must be lower case.   * &#x60;expedia_collect&#x60; - Return only properties where the payment is collected by Expedia.   * &#x60;property_collect&#x60; - Return only properties where the payment is collected at the property.  | [optional] |
| **category_id** | [**Array&lt;String&gt;**](String.md) | Search to include properties that have the requested [category ID](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists). If this parameter is not supplied, all category IDs are included. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested category IDs.  | [optional] |
| **category_id_exclude** | [**Array&lt;String&gt;**](String.md) | Search to exclude properties that do not have the requested [category ID](https://developers.expediagroup.com/docs/rapid/lodging/content/content-reference-lists). If this parameter is not supplied, all category IDs are included. This parameter can be supplied multiple times with different values, which will exclude properties that match any of the requested category IDs.  | [optional] |
| **chain_id** | [**Array&lt;String&gt;**](String.md) | The ID of the chain you want to search for. These chain IDs can be positive and negative numbers. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested chain IDs.  | [optional] |
| **country_code** | [**Array&lt;String&gt;**](String.md) | Search for properties with the requested country code, in ISO 3166-1 alpha-2 format. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested country codes.  | [optional] |
| **date_added_end** | **String** | Search for properties added on or before the requested UTC date, in ISO 8601 format (YYYY-MM-DD)  | [optional] |
| **date_added_start** | **String** | Search for properties added on or after the requested UTC date, in ISO 8601 format (YYYY-MM-DD)  | [optional] |
| **date_updated_end** | **String** | Search for properties updated on or before the requested UTC date, in ISO 8601 format (YYYY-MM-DD)  | [optional] |
| **date_updated_start** | **String** | Search for properties updated on or after the requested UTC date, in ISO 8601 format (YYYY-MM-DD)  | [optional] |
| **include** | [**Array&lt;String&gt;**](String.md) | Each time this parameter is specified will add to the list of fields and associated objects returned in the response. All values and field names are lower case. The values &#x60;property_ids&#x60; and &#x60;catalog&#x60; will continue to behave as specified below for backwards compatibility. All other top level field names will add the specified field to the list of fields returned in the response. See the response schema for a full list of top level field names. Additionally, the field &#x60;property_id&#x60; will always be returned regardless of what include values are passed.&lt;br&gt;&lt;br&gt; Possible values:  * &#x60;property_ids&#x60; - ***DEPRECATED*** - Please use &#x60;property_id&#x60; which matches the response field name.  * &#x60;catalog&#x60; - Include all property catalog fields. See     [Property Catalog File endpoint](https://developers.expediagroup.com/docs/rapid/resources/rapid-api#get-/files/properties/catalog) for a list of fields.  * &#x60;property_id&#x60; - Passing in the value &#x60;property_id&#x60; and no other values will limit the response to only      &#x60;property_id&#x60;. Not necessary to include in combination with other field name values, as it will always      be returned.  * All field names found at the top level of the property content response are now valid values for     inclusion.  | [optional] |
| **multi_unit** | **Boolean** | Search for multi-unit properties. If this parameter is not supplied, both single-unit and multi-unit properties will be included.   * &#x60;true&#x60; - Include only properties that are multi-unit.   * &#x60;false&#x60; - Do not include properties that are multi-unit.  | [optional] |
| **property_id** | [**Array&lt;String&gt;**](String.md) | The ID of the property you want to search for. You can provide 1 to 250 property_id parameters.  | [optional] |
| **property_rating_max** | **String** | Search for properties with a property rating less than or equal to the requested rating. The highest property rating value is 5.0.  | [optional] |
| **property_rating_min** | **String** | Search for properties with a property rating greater than or equal to the requested rating. The lowest property rating value is 0.0.  | [optional] |
| **spoken_language_id** | [**Array&lt;String&gt;**](String.md) | The id of the spoken language you want to search for. This parameter can be supplied multiple times with different values, which will include properties that match any of the requested spoken languages. The language code as a subset of BCP47 format.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **token** | **String** | Only used for requesting additional pages of data. Provided by the &#x60;next&#x60; URL in the &#x60;Link&#x60; response header.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValue&gt;**](GetPropertyContent200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_content_file

> <GetPropertyContent200ResponseValueAddressLocalizedLinksValue> get_property_content_file(accept, accept_encoding, user_agent, language, supply_source, opts)

Property Content File

Returns a link to download all content for all of EPS’s active properties in the requested language. The response includes property-level, room-level and rate-level information.  <br>This file is in JSONL format and is gzipped. The schema of each JSON object in the JSONL file is the same as the schema of each JSON object from the Property Content call.  <br>Example of a JSONL file with 2 properties:   ```   {\"property_id\":\"12345\",\"name\":\"Test Property Name\",\"address\":{\"line_1\":\"123 Main St\",\"line_2\":\"Apt A\",\"city\":\"Springfield\",\"state_province_code\":\"MO\",\"state_province_name\":\"Missouri\",\"postal_code\":\"65804\",\"country_code\":\"US\",\"obfuscation_required\":false,\"localized\":{\"links\":{\"es-ES\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=es-ES&include=address&property_id=12345\"},\"fr-FR\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=fr-FR&include=address&property_id=12345\"}}}},\"ratings\":{\"property\":{\"rating\":\"3.5\",\"type\":\"Star\"},\"guest\":{\"count\":48382,\"overall\":\"3.1\",\"cleanliness\":\"4.2\",\"service\":\"1.1\",\"comfort\":\"4.3\",\"condition\":\"1.6\",\"location\":\"4.0\",\"neighborhood\":\"3.4\",\"quality\":\"3.4\",\"value\":\"2.2\",\"amenities\":\"1.4\",\"recommendation_percent\":\"73%\"}},\"location\":{\"coordinates\":{\"latitude\":37.15845,\"longitude\":-93.26838}},\"phone\":\"1-417-862-0153\",\"fax\":\"1-417-863-7249\",\"category\":{\"id\":\"1\",\"name\":\"Hotel\"},\"rank\":42,\"business_model\":{\"expedia_collect\":true,\"property_collect\":false,\"updated_expedia_collect\":false},\"checkin\":{\"24_hour\":\"24-hour check-in\",\"begin_time\":\"3:00 PM\",\"end_time\":\"11:00 PM\",\"instructions\":\"Extra-person charges may apply and vary depending on hotel policy. &lt;br />Government-issued photo identification and a credit card or cash deposit are required at check-in for incidental charges. &lt;br />Special requests are subject to availability upon check-in and may incur additional charges. Special requests cannot be guaranteed. &lt;br />\",\"special_instructions\":\"There is no front desk at this property. To make arrangements for check-in please contact the property ahead of time using the information on the booking confirmation.\",\"min_age\":18},\"checkout\":{\"time\":\"11:00 AM\",\"instructions\":\"The host requests you complete the following cleaning tasks before checking out:<br/>Load and start the dishwasher<br/>Strip any used beds, gather used towels, and store extra beds<br/>Remove personal items, remove leftover food and drinks, and take out the trash\"},\"fees\":{\"mandatory\":\"<p>You'll be asked to pay the following charges at the hotel:</p> <ul><li>Deposit: USD 50 per day</li><li>Resort fee: USD 29.12 per accommodation, per night</li></ul> The hotel resort fee includes:<ul><li>Fitness center access</li><li>Internet access</li><li>Phone calls</li><li>Additional inclusions</li></ul> <p>We have included all charges provided to us by the property. However, charges can vary, for example, based on length of stay or the room you book. </p>\",\"optional\":\"Fee for in-room wireless Internet: USD 15 per hour (rates may vary)</li> <li>Airport shuttle fee: USD 350 per vehicle (one way)</li>           <li>Rollaway bed fee: USD 175 per night</li>\"},\"policies\":{\"know_before_you_go\":\"Reservations are required for massage services and spa treatments. Reservations can be made by contacting the hotel prior to arrival, using the contact information on the booking confirmation. </li><li>Children 11 years old and younger stay free when occupying the parent or guardian's room, using existing bedding. </li><li>Only registered guests are allowed in the guestrooms. </li> <li>Some facilities may have restricted access. Guests can contact the property for details using the contact information on the booking confirmation. </li> </ul>\"},\"attributes\":{\"general\":{\"2549\":{\"id\":\"2549\",\"name\":\"No elevators\"},\"3357\":{\"id\":\"3357\",\"name\":\"Caters to adults only\"}},\"pets\":{\"51\":{\"id\":\"51\",\"name\":\"Pets allowed\"},\"2809\":{\"id\":\"2809\",\"name\":\"Dogs only\"},\"3321\":{\"id\":\"3321\",\"name\":\"Pet maximum weight in kg is - 24\",\"value\":24}}},\"amenities\":{\"9\":{\"id\":\"9\",\"name\":\"Fitness facilities\"},\"2820\":{\"id\":\"2820\",\"name\":\"Number of indoor pools - 10\",\"value\":10}},\"images\":[{\"caption\":\"Featured Image\",\"hero_image\":true,\"category\":3,\"links\":{\"70px\":{\"method\":\"GET\",\"href\":\"https://i.travelapi.com/hotels/1000000/20000/15300/15237/bef1b976_t.jpg\"}}}],\"onsite_payments\":{\"currency\":\"USD\",\"types\":{\"171\":{\"id\":\"171\",\"name\":\"American Express\"}}},\"rooms\":{\"224829\":{\"id\":\"224829\",\"name\":\"Single Room\",\"descriptions\":{\"overview\":\"<strong>2 Twin Beds</strong><br />269-sq-foot (25-sq-meter) room with mountain views<br /><br /><b>Internet</b> - Free WiFi <br /> <b>Entertainment</b> - Flat-screen TV with cable channels<br /><b>Food & Drink</b> - Refrigerator, coffee/tea maker,  room service, and free bottled water<br /><b>Sleep</b> - Premium bedding <br /><b>Bathroom</b> - Private bathroom, shower, bathrobes, and free toiletries<br /><b>Practical</b> - Safe and desk; cribs/infant beds available on request<br /><b>Comfort</b> - Climate-controlled air conditioning and daily housekeeping<br />Non-Smoking<br />\"},\"amenities\":{\"130\":{\"id\":\"130\",\"name\":\"Refrigerator\"},\"1234\":{\"id\":\"1234\",\"name\":\"Test Amenity - 200\",\"value\":\"200\"}},\"images\":[{\"hero_image\":true,\"category\":21001,\"links\":{\"70px\":{\"method\":\"GET\",\"href\":\"https://i.travelapi.com/hotels/1000000/20000/15300/15237/bef1b976_t.jpg\"}},\"caption\":\"Guestroom\"}],\"bed_groups\":{\"37321\":{\"id\":\"37321\",\"description\":\"1 King Bed\",\"configuration\":[{\"type\":\"KingBed\",\"size\":\"King\",\"quantity\":1}]}},\"area\":{\"square_meters\":20,\"square_feet\":215},\"views\":{\"4146\":{\"id\":\"4146\",\"name\":\"Courtyard view\"}},\"occupancy\":{\"max_allowed\":{\"total\":5,\"children\":2,\"adults\":4},\"age_categories\":{\"Adult\":{\"name\":\"Adult\",\"minimum_age\":9}}}}},\"rates\":{\"333abc\":{\"id\":\"333abc\",\"amenities\":{\"1234\":{\"id\":\"1234\",\"name\":\"Test Amenity - 200\",\"value\":\"200\"},\"2104\":{\"id\":\"2104\",\"name\":\"Full Breakfast\"}},\"special_offer_description\":\"<strong>Breakfast for 2</strong> - Rate includes the following:\\r\\n<ul><li>Accommodations as selected</li>\\r\\n<li>Breakfast in hotel restaurant for up to 2 adults and children 12 years old and under registered in the same room</li>\\r\\n</ul><em>Must book this rate plan to receive benefits. Details provided at check-in. Taxes and gratuity may not be included. No refunds for any unused portion of offer. Offer subject to availability. Offer is not valid with groups/conventions and may not be combined with other promotional offers. Other restrictions and blackout dates may apply.</em>\\r\\n\"}},\"dates\":{\"added\":\"1998-07-19T05:00:00.000Z\",\"updated\":\"2018-03-22T07:23:14.000Z\"},\"descriptions\":{\"amenities\":\"Don't miss out on the many recreational opportunities, including an outdoor pool, a sauna, and a fitness center. Additional features at this hotel include complimentary wireless Internet access, concierge services, and an arcade/game room.\",\"dining\":\"Grab a bite at one of the hotel's 3 restaurants, or stay in and take advantage of 24-hour room service. Quench your thirst with your favorite drink at a bar/lounge. Buffet breakfasts are available daily for a fee.\",\"renovations\":\"During renovations, the hotel will make every effort to minimize noise and disturbance.  The property will be renovating from 08 May 2017 to 18 May 2017 (completion date subject to change). The following areas are affected:  <ul><li>Fitness facilities</li></ul>\",\"national_ratings\":\"For the benefit of our customers, we have provided a rating based on our rating system.\",\"business_amenities\":\"Featured amenities include complimentary wired Internet access, a 24-hour business center, and limo/town car service. Event facilities at this hotel consist of a conference center and meeting rooms. Free self parking is available onsite.\",\"rooms\":\"Make yourself at home in one of the 334 air-conditioned rooms featuring LCD televisions. Complimentary wired and wireless Internet access keeps you connected, and satellite programming provides entertainment. Private bathrooms with separate bathtubs and showers feature deep soaking bathtubs and complimentary toiletries. Conveniences include phones, as well as safes and desks.\",\"attractions\":\"Distances are calculated in a straight line from the property's location to the point of interest or attraction, and may not reflect actual travel distance. <br /><br /> Distances are displayed to the nearest 0.1 mile and kilometer. <p>Sogo Department Store - 0.7 km / 0.4 mi <br />National Museum of Natural Science - 1.1 km / 0.7 mi <br />Shr-Hwa International Tower - 1.4 km / 0.8 mi <br />Shinkong Mitsukoshi Department Store - 1.5 km / 0.9 mi <br />Taichung Metropolitan Opera House - 1.7 km / 1 mi <br />Tiger City Mall - 1.8 km / 1.1 mi <br />Maple Garden Park - 1.9 km / 1.2 mi <br />National Museum of Fine Arts - 2.1 km / 1.3 mi <br />Feng Chia University - 2.4 km / 1.5 mi <br />Bao An Temple - 2.5 km / 1.6 mi <br />Fengjia Night Market - 2.5 km / 1.6 mi <br />Zhonghua Night Market - 2.7 km / 1.7 mi <br />Chonglun Park - 2.9 km / 1.8 mi <br />Wan He Temple - 2.9 km / 1.8 mi <br />Chungyo Department Store - 3.1 km / 1.9 mi <br /></p><p>The nearest airports are:<br />Taichung (RMQ) - 12 km / 7.5 mi<br />Taipei (TPE-Taoyuan Intl.) - 118.3 km / 73.5 mi<br />Taipei (TSA-Songshan) - 135.5 km / 84.2 mi<br /></p><p></p>\",\"location\":\"This 4-star hotel is within close proximity of Shr-Hwa International Tower and Shinkong Mitsukoshi Department Store.  A stay at Tempus Hotel Taichung places you in the heart of Taichung, convenient to Sogo Department Store and National Museum of Natural Science.\",\"headline\":\"Near National Museum of Natural Science\",\"general\":\"General description\"},\"statistics\":{\"52\":{\"id\":\"52\",\"name\":\"Total number of rooms - 820\",\"value\":\"820\"},\"54\":{\"id\":\"54\",\"name\":\"Number of floors - 38\",\"value\":\"38\"}},\"airports\":{\"preferred\":{\"iata_airport_code\":\"SGF\"}},\"themes\":{\"2337\":{\"id\":\"2337\",\"name\":\"Luxury Hotel\"},\"2341\":{\"id\":\"2341\",\"name\":\"Spa Hotel\"}},\"all_inclusive\":{\"all_rate_plans\":true,\"some_rate_plans\":false,\"details\":\"<p>This resort is all-inclusive. Onsite food and beverages are included in the room price (some restrictions may apply). </p><p><strong>Activities and facilities/equipment</strong><br />Land activities<ul><li>Fitness facilities</li></ul><br />Lessons/classes/games <ul><li>Pilates</li><li>Yoga</li></ul></p><p><strong>Entertainment</strong><ul><li>Onsite entertainment and activities</li><li>Onsite live performances</li></ul></p>\"},\"tax_id\":\"AB-012-987-1234-01\",\"chain\":{\"id\":\"-6\",\"name\":\"Hyatt Hotels\"},\"brand\":{\"id\":\"2209\",\"name\":\"Hyatt Place\"},\"spoken_languages\":{\"vi\":{\"id\":\"vi\",\"name\":\"Vietnamese\"}},\"multi_unit\":true,\"payment_registration_recommended\":false,\"vacation_rental_details\": {\"registry_number\": \"Property Registration Number 123456\",\"private_host\": \"true\",\"property_manager\": {\"name\": \"Victor\",\"links\": {\"image\": {\"method\": \"GET\",\"href\": \"https://test-image/test/test/836f1097-fbcf-43b5-bc02-c8ff6658cb90.c1.jpg\"}}},\"rental_agreement\": {\"links\": {\"rental_agreement\": {\"method\": \"GET\",\"href\": \"https://test-link.test.amazonaws.com/rentalconditions_property_d65e7eb5-4a7c-4a80-a8a3-171999f9f444.pdf\"}}},\"house_rules\": [\"Children welcome\",\"No pets\",\"No smoking\",\"No parties or events\"],\"amenities\": {\"4296\": {\"id\": \"4296\",\"name\": \"Furnished balcony or patio\"},\"2859\": {\"id\": \"2859\",\"name\": \"Private pool\"}},\"vrbo_srp_id\": \"123.1234567.5678910\",\"listing_id\": \"1234567\",\"listing_number\": \"5678910\",\"listing_source\": \"HOMEAWAY_US\",\"listing_unit\": \"/units/0000/32d82dfa-1a48-45d6-9132-49fdbf1bfc60\"},\"supply_source\":\"vrbo\",\"registry_number\":\"Property Registration Number 123456\"}   {\"property_id\":\"67890\",\"name\":\"Test Property Name 2\",\"address\":{\"line_1\":\"123 Main St\",\"line_2\":\"Apt A\",\"city\":\"Springfield\",\"state_province_code\":\"MO\",\"state_province_name\":\"Missouri\",\"postal_code\":\"65804\",\"country_code\":\"US\",\"obfuscation_required\":true,\"localized\":{\"links\":{\"es-ES\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=es-ES&include=address&property_id=67890\"},\"de-DE\":{\"method\":\"GET\",\"href\":\"https://api.ean.com/v3/properties/content?language=de-DE&include=address&property_id=67890\"}}}},\"ratings\":{\"property\":{\"rating\":\"3.5\",\"type\":\"Star\"},\"guest\":{\"count\":7651,\"overall\":\"4.3\",\"cleanliness\":\"4.2\",\"service\":\"1.1\",\"comfort\":\"4.3\",\"condition\":\"1.6\",\"location\":\"4.0\",\"neighborhood\":\"3.4\",\"quality\":\"3.4\",\"value\":\"2.2\",\"amenities\":\"1.4\",\"recommendation_percent\":\"80%\"}},\"location\":{\"coordinates\":{\"latitude\":37.15845,\"longitude\":-93.26838},\"obfuscated_coordinates\":{\"latitude\":28.339303,\"longitude\":-81.47791},\"obfuscation_required\":true},\"phone\":\"1-417-862-0153\",\"fax\":\"1-417-863-7249\",\"category\":{\"id\":\"1\",\"name\":\"Hotel\"},\"rank\":42,\"business_model\":{\"expedia_collect\":true,\"property_collect\":true,\"updated_expedia_collect\":true},\"checkin\":{\"24_hour\":\"24-hour check-in\",\"begin_time\":\"3:00 PM\",\"end_time\":\"11:00 PM\",\"instructions\":\"Extra-person charges may apply and vary depending on hotel policy. &lt;br />Government-issued photo identification and a credit card or cash deposit are required at check-in for incidental charges. &lt;br />Special requests are subject to availability upon check-in and may incur additional charges. Special requests cannot be guaranteed. &lt;br />\",\"special_instructions\":\"There is no front desk at this property. To make arrangements for check-in please contact the property ahead of time using the information on the booking confirmation.\",\"min_age\":18},\"checkout\":{\"time\":\"11:00 AM\",\"instructions\":\"The host requests you complete the following cleaning tasks before checking out:<br/>Load and start the dishwasher<br/>Strip any used beds, gather used towels, and store extra beds<br/>Remove personal items, remove leftover food and drinks, and take out the trash\"},\"fees\":{\"mandatory\":\"<p>You'll be asked to pay the following charges at the hotel:</p> <ul><li>Deposit: USD 50 per day</li><li>Resort fee: USD 29.12 per accommodation, per night</li></ul> The hotel resort fee includes:<ul><li>Fitness center access</li><li>Internet access</li><li>Phone calls</li><li>Additional inclusions</li></ul> <p>We have included all charges provided to us by the property. However, charges can vary, for example, based on length of stay or the room you book. </p>\",\"optional\":\"Fee for in-room wireless Internet: USD 15 per hour (rates may vary)</li> <li>Airport shuttle fee: USD 350 per vehicle (one way)</li>           <li>Rollaway bed fee: USD 175 per night</li>\"},\"policies\":{\"know_before_you_go\":\"Reservations are required for massage services and spa treatments. Reservations can be made by contacting the hotel prior to arrival, using the contact information on the booking confirmation. </li><li>Children 11 years old and younger stay free when occupying the parent or guardian's room, using existing bedding. </li><li>Only registered guests are allowed in the guestrooms. </li> <li>Some facilities may have restricted access. Guests can contact the property for details using the contact information on the booking confirmation. </li> </ul>\"},\"attributes\":{\"general\":{\"2549\":{\"id\":\"2549\",\"name\":\"No elevators\"},\"3357\":{\"id\":\"3357\",\"name\":\"Caters to adults only\"}},\"pets\":{\"51\":{\"id\":\"51\",\"name\":\"Pets allowed\"},\"2809\":{\"id\":\"2809\",\"name\":\"Dogs only\"},\"3321\":{\"id\":\"3321\",\"name\":\"Pet maximum weight in kg is - 24\",\"value\":24}}},\"amenities\":{\"9\":{\"id\":\"9\",\"name\":\"Fitness facilities\"},\"2820\":{\"id\":\"2820\",\"name\":\"Number of indoor pools - 10\",\"value\":10}},\"images\":[{\"caption\":\"Featured Image\",\"hero_image\":true,\"category\":3,\"links\":{\"70px\":{\"method\":\"GET\",\"href\":\"https://i.travelapi.com/hotels/1000000/20000/15300/15237/bef1b976_t.jpg\"}}}],\"onsite_payments\":{\"currency\":\"USD\",\"types\":{\"171\":{\"id\":\"171\",\"name\":\"American Express\"}}},\"rooms\":{\"224829\":{\"id\":\"224829\",\"name\":\"Single Room\",\"descriptions\":{\"overview\":\"<strong>2 Twin Beds</strong><br />269-sq-foot (25-sq-meter) room with mountain views<br /><br /><b>Internet</b> - Free WiFi <br /> <b>Entertainment</b> - Flat-screen TV with cable channels<br /><b>Food & Drink</b> - Refrigerator, coffee/tea maker,  room service, and free bottled water<br /><b>Sleep</b> - Premium bedding <br /><b>Bathroom</b> - Private bathroom, shower, bathrobes, and free toiletries<br /><b>Practical</b> - Safe and desk; cribs/infant beds available on request<br /><b>Comfort</b> - Climate-controlled air conditioning and daily housekeeping<br />Non-Smoking<br />\"},\"amenities\":{\"130\":{\"id\":\"130\",\"name\":\"Refrigerator\"},\"1234\":{\"id\":\"1234\",\"name\":\"Test Amenity - 200\",\"value\":\"200\"}},\"images\":[{\"hero_image\":true,\"category\":21001,\"links\":{\"70px\":{\"method\":\"GET\",\"href\":\"https://i.travelapi.com/hotels/1000000/20000/15300/15237/bef1b976_t.jpg\"}},\"caption\":\"Guestroom\"}],\"bed_groups\":{\"37321\":{\"id\":\"37321\",\"description\":\"1 King Bed\",\"configuration\":[{\"type\":\"KingBed\",\"size\":\"King\",\"quantity\":1}]}},\"area\":{\"square_meters\":17},\"views\":{\"4134\":{\"id\":\"4134\",\"name\":\"City view\"}},\"occupancy\":{\"max_allowed\":{\"total\":3,\"children\":2,\"adults\":3},\"age_categories\":{\"ChildAgeA\":{\"name\":\"ChildAgeA\",\"minimum_age\":3}}}}},\"rates\":{\"333abc\":{\"id\":\"333abc\",\"amenities\":{\"1234\":{\"id\":\"1234\",\"name\":\"Test Amenity - 200\",\"value\":\"200\"},\"2104\":{\"id\":\"2104\",\"name\":\"Full Breakfast\"}},\"special_offer_description\":\"<strong>Breakfast for 2</strong> - Rate includes the following:\\r\\n<ul><li>Accommodations as selected</li>\\r\\n<li>Breakfast in hotel restaurant for up to 2 adults and children 12 years old and under registered in the same room</li>\\r\\n</ul><em>Must book this rate plan to receive benefits. Details provided at check-in. Taxes and gratuity may not be included. No refunds for any unused portion of offer. Offer subject to availability. Offer is not valid with groups/conventions and may not be combined with other promotional offers. Other restrictions and blackout dates may apply.</em>\\r\\n\"}},\"dates\":{\"added\":\"1998-07-20T05:00:00.000Z\",\"updated\":\"2018-03-22T13:33:17.000Z\"},\"descriptions\":{\"amenities\":\"Don't miss out on the many recreational opportunities, including an outdoor pool, a sauna, and a fitness center. Additional features at this hotel include complimentary wireless Internet access, concierge services, and an arcade/game room.\",\"dining\":\"Grab a bite at one of the hotel's 3 restaurants, or stay in and take advantage of 24-hour room service. Quench your thirst with your favorite drink at a bar/lounge. Buffet breakfasts are available daily for a fee.\",\"renovations\":\"During renovations, the hotel will make every effort to minimize noise and disturbance.  The property will be renovating from 08 May 2017 to 18 May 2017 (completion date subject to change). The following areas are affected:  <ul><li>Fitness facilities</li></ul>\",\"national_ratings\":\"For the benefit of our customers, we have provided a rating based on our rating system.\",\"business_amenities\":\"Featured amenities include complimentary wired Internet access, a 24-hour business center, and limo/town car service. Event facilities at this hotel consist of a conference center and meeting rooms. Free self parking is available onsite.\",\"rooms\":\"Make yourself at home in one of the 334 air-conditioned rooms featuring LCD televisions. Complimentary wired and wireless Internet access keeps you connected, and satellite programming provides entertainment. Private bathrooms with separate bathtubs and showers feature deep soaking bathtubs and complimentary toiletries. Conveniences include phones, as well as safes and desks.\",\"attractions\":\"Distances are calculated in a straight line from the property's location to the point of interest or attraction, and may not reflect actual travel distance. <br /><br /> Distances are displayed to the nearest 0.1 mile and kilometer. <p>Sogo Department Store - 0.7 km / 0.4 mi <br />National Museum of Natural Science - 1.1 km / 0.7 mi <br />Shr-Hwa International Tower - 1.4 km / 0.8 mi <br />Shinkong Mitsukoshi Department Store - 1.5 km / 0.9 mi <br />Taichung Metropolitan Opera House - 1.7 km / 1 mi <br />Tiger City Mall - 1.8 km / 1.1 mi <br />Maple Garden Park - 1.9 km / 1.2 mi <br />National Museum of Fine Arts - 2.1 km / 1.3 mi <br />Feng Chia University - 2.4 km / 1.5 mi <br />Bao An Temple - 2.5 km / 1.6 mi <br />Fengjia Night Market - 2.5 km / 1.6 mi <br />Zhonghua Night Market - 2.7 km / 1.7 mi <br />Chonglun Park - 2.9 km / 1.8 mi <br />Wan He Temple - 2.9 km / 1.8 mi <br />Chungyo Department Store - 3.1 km / 1.9 mi <br /></p><p>The nearest airports are:<br />Taichung (RMQ) - 12 km / 7.5 mi<br />Taipei (TPE-Taoyuan Intl.) - 118.3 km / 73.5 mi<br />Taipei (TSA-Songshan) - 135.5 km / 84.2 mi<br /></p><p></p>\",\"location\":\"This 4-star hotel is within close proximity of Shr-Hwa International Tower and Shinkong Mitsukoshi Department Store.  A stay at Tempus Hotel Taichung places you in the heart of Taichung, convenient to Sogo Department Store and National Museum of Natural Science.\",\"headline\":\"Near National Museum of Natural Science\",\"general\":\"General description\"},\"statistics\":{\"52\":{\"id\":\"52\",\"name\":\"Total number of rooms - 820\",\"value\":\"820\"},\"54\":{\"id\":\"54\",\"name\":\"Number of floors - 38\",\"value\":\"38\"}},\"airports\":{\"preferred\":{\"iata_airport_code\":\"SGF\"}},\"themes\":{\"2337\":{\"id\":\"2337\",\"name\":\"Luxury Hotel\"},\"2341\":{\"id\":\"2341\",\"name\":\"Spa Hotel\"}},\"all_inclusive\":{\"all_rate_plans\":true,\"some_rate_plans\":false,\"details\":\"<p>This resort is all-inclusive. Onsite food and beverages are included in the room price (some restrictions may apply). </p><p><strong>Activities and facilities/equipment</strong><br />Land activities<ul><li>Fitness facilities</li></ul><br />Lessons/classes/games <ul><li>Pilates</li><li>Yoga</li></ul></p><p><strong>Entertainment</strong><ul><li>Onsite entertainment and activities</li><li>Onsite live performances</li></ul></p>\"},\"tax_id\":\"CD-012-987-1234-02\",\"chain\":{\"id\":\"-5\",\"name\":\"Hilton Worldwide\"},\"brand\":{\"id\":\"358\",\"name\":\"Hampton Inn\"},\"spoken_languages\":{\"en\":{\"id\":\"en\",\"name\":\"English\"}},\"multi_unit\":true,\"payment_registration_recommended\":true,\"vacation_rental_details\":{\"registry_number\":\"Property Registration Number 123456\",\"private_host\":\"true\",\"property_manager\":{\"name\":\"John Smith\",\"links\":{\"image\":{\"method\":\"GET\",\"href\":\"https://example.com/profile.jpg\"}}},\"rental_agreement\":{\"links\":{\"rental_agreement\":{\"method\":\"GET\",\"href\":\"https:/example.com/rentalconditions.pdf\"}}},\"house_rules\":[\"Children welcome\",\"No pets\",\"No smoking\",\"No parties or events\"],\"amenities\":{\"2859\":{\"id\":\"2859\",\"name\":\"Private pool\"},\"4296\":{\"id\":\"4296\",\"name\":\"Furnished balcony or patio\"}},\"vrbo_srp_id\":\"123.1234567.5678910\",\"listing_id\":\"1234567\",\"listing_number\":\"5678910\",\"listing_source\":\"HOMEAWAY_US\",\"listing_unit\":\"/units/0000/32d82dfa-1a48-45d6-9132-49fdbf1bfc60\"},\"supply_source\":\"vrbo\",\"registry_number\":\"Property Registration Number 123456\"}   ``` 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
supply_source = 'expedia' # String | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * `expedia` - Standard Expedia supply.   * `vrbo` - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Property Content File
  result = api_instance.get_property_content_file(accept, accept_encoding, user_agent, language, supply_source, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_content_file: #{e}"
end
```

#### Using the get_property_content_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPropertyContent200ResponseValueAddressLocalizedLinksValue>, Integer, Hash)> get_property_content_file_with_http_info(accept, accept_encoding, user_agent, language, supply_source, opts)

```ruby
begin
  # Property Content File
  data, status_code, headers = api_instance.get_property_content_file_with_http_info(accept, accept_encoding, user_agent, language, supply_source, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPropertyContent200ResponseValueAddressLocalizedLinksValue>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_content_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **supply_source** | **String** | Options for which supply source you would like returned in the content response. This parameter may only be supplied once and will return all properties that match the requested supply source. An error is thrown if the parameter is provided multiple times.   * &#x60;expedia&#x60; - Standard Expedia supply.   * &#x60;vrbo&#x60; - VRBO supply - This option is restricted to partners who have VRBO supply enabled for their profile. See [Vacation Rentals](https://developers.expediagroup.com/docs/rapid/lodging/vacation-rentals) for more information.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**GetPropertyContent200ResponseValueAddressLocalizedLinksValue**](GetPropertyContent200ResponseValueAddressLocalizedLinksValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_guest_reviews

> <GetPropertyGuestReviews200Response> get_property_guest_reviews(accept, accept_encoding, user_agent, language, property_id, opts)

Property Guest Reviews

<i>Note: Property Guest Reviews are only available if your account is configured for access and all launch requirements have been followed. Please find the launch requirements here [https://support.expediapartnersolutions.com/hc/en-us/articles/360008646799](https://support.expediapartnersolutions.com/hc/en-us/articles/360008646799) and contact your Account Manager for more details.</i>  The response is an individual Guest Reviews object containing multiple guest reviews for the requested active property.  To ensure you always show the latest guest reviews, this call should be made whenever a customer looks at the details for a specific property. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
property_id = '12345' # String | Expedia Property ID.
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  filter: ['language'], # Array<String> | Single filter value. Send multiple instances of this parameter to request multiple filters. * `language` - Filters reviews to only those that match the specified `language` parameter value. Without   this filter, the matching language will be preferred, but other language results can be returned.   Specifying this filter could produce an error when there are no matching results. 
  trip_reason: ['business'], # Array<String> | Desired reason provided for the reviewer's trip that you wish to display. This parameter can be supplied multiple times with different values, which will include reviews that match any of the requested trip reasons. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Property Guest Reviews
  result = api_instance.get_property_guest_reviews(accept, accept_encoding, user_agent, language, property_id, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_guest_reviews: #{e}"
end
```

#### Using the get_property_guest_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPropertyGuestReviews200Response>, Integer, Hash)> get_property_guest_reviews_with_http_info(accept, accept_encoding, user_agent, language, property_id, opts)

```ruby
begin
  # Property Guest Reviews
  data, status_code, headers = api_instance.get_property_guest_reviews_with_http_info(accept, accept_encoding, user_agent, language, property_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPropertyGuestReviews200Response>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_property_guest_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **property_id** | **String** | Expedia Property ID. |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **filter** | [**Array&lt;String&gt;**](String.md) | Single filter value. Send multiple instances of this parameter to request multiple filters. * &#x60;language&#x60; - Filters reviews to only those that match the specified &#x60;language&#x60; parameter value. Without   this filter, the matching language will be preferred, but other language results can be returned.   Specifying this filter could produce an error when there are no matching results.  | [optional] |
| **trip_reason** | [**Array&lt;String&gt;**](String.md) | Desired reason provided for the reviewer&#39;s trip that you wish to display. This parameter can be supplied multiple times with different values, which will include reviews that match any of the requested trip reasons.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**GetPropertyGuestReviews200Response**](GetPropertyGuestReviews200Response.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rate_amenities_reference

> <Hash<String, GetAmenitiesReference200ResponseValue>> get_rate_amenities_reference(accept, accept_encoding, user_agent, language, opts)

Rate Amenities Reference

Returns a complete collection of rate amenities available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Rate Amenities Reference
  result = api_instance.get_rate_amenities_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_rate_amenities_reference: #{e}"
end
```

#### Using the get_rate_amenities_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetAmenitiesReference200ResponseValue>>, Integer, Hash)> get_rate_amenities_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Rate Amenities Reference
  data, status_code, headers = api_instance.get_rate_amenities_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetAmenitiesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_rate_amenities_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetAmenitiesReference200ResponseValue&gt;**](GetAmenitiesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_amenities_reference

> <Hash<String, GetAmenitiesReference200ResponseValue>> get_room_amenities_reference(accept, accept_encoding, user_agent, language, opts)

Room Amenities Reference

Returns a complete collection of roomo amenities available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Room Amenities Reference
  result = api_instance.get_room_amenities_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_room_amenities_reference: #{e}"
end
```

#### Using the get_room_amenities_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetAmenitiesReference200ResponseValue>>, Integer, Hash)> get_room_amenities_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Room Amenities Reference
  data, status_code, headers = api_instance.get_room_amenities_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetAmenitiesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_room_amenities_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetAmenitiesReference200ResponseValue&gt;**](GetAmenitiesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_images_reference

> <Hash<String, GetImagesReference200ResponseValue>> get_room_images_reference(accept, accept_encoding, user_agent, language, opts)

Room Images Reference

Returns a complete collection of room images available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Room Images Reference
  result = api_instance.get_room_images_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_room_images_reference: #{e}"
end
```

#### Using the get_room_images_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetImagesReference200ResponseValue>>, Integer, Hash)> get_room_images_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Room Images Reference
  data, status_code, headers = api_instance.get_room_images_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetImagesReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_room_images_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetImagesReference200ResponseValue&gt;**](GetImagesReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_views_reference

> <Hash<String, GetPropertyContent200ResponseValueRoomsValueViewsValue>> get_room_views_reference(accept, accept_encoding, user_agent, language, opts)

Room Views Reference

Returns a complete collection of room views available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Room Views Reference
  result = api_instance.get_room_views_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_room_views_reference: #{e}"
end
```

#### Using the get_room_views_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueRoomsValueViewsValue>>, Integer, Hash)> get_room_views_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Room Views Reference
  data, status_code, headers = api_instance.get_room_views_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueRoomsValueViewsValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_room_views_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueRoomsValueViewsValue&gt;**](GetPropertyContent200ResponseValueRoomsValueViewsValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_spoken_languages_reference

> <Hash<String, GetPropertyContent200ResponseValueSpokenLanguagesValue>> get_spoken_languages_reference(accept, accept_encoding, user_agent, language, opts)

Spoken Languages Reference

Returns a complete collection of spoken languages available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Spoken Languages Reference
  result = api_instance.get_spoken_languages_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_spoken_languages_reference: #{e}"
end
```

#### Using the get_spoken_languages_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueSpokenLanguagesValue>>, Integer, Hash)> get_spoken_languages_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Spoken Languages Reference
  data, status_code, headers = api_instance.get_spoken_languages_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueSpokenLanguagesValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_spoken_languages_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueSpokenLanguagesValue&gt;**](GetPropertyContent200ResponseValueSpokenLanguagesValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_statistics_reference

> <Hash<String, GetStatisticsReference200ResponseValue>> get_statistics_reference(accept, accept_encoding, user_agent, language, opts)

Statistics Reference

Returns a complete collection of statistics available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Statistics Reference
  result = api_instance.get_statistics_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_statistics_reference: #{e}"
end
```

#### Using the get_statistics_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetStatisticsReference200ResponseValue>>, Integer, Hash)> get_statistics_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Statistics Reference
  data, status_code, headers = api_instance.get_statistics_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetStatisticsReference200ResponseValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_statistics_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetStatisticsReference200ResponseValue&gt;**](GetStatisticsReference200ResponseValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_themes_reference

> <Hash<String, GetPropertyContent200ResponseValueThemesValue>> get_themes_reference(accept, accept_encoding, user_agent, language, opts)

Themes Reference

Returns a complete collection of themes available in the Rapid API. 

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

api_instance = ExpediaRapid::ContentApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
language = 'en-US' # String | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. <br><br>Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options) 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Themes Reference
  result = api_instance.get_themes_reference(accept, accept_encoding, user_agent, language, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_themes_reference: #{e}"
end
```

#### Using the get_themes_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetPropertyContent200ResponseValueThemesValue>>, Integer, Hash)> get_themes_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)

```ruby
begin
  # Themes Reference
  data, status_code, headers = api_instance.get_themes_reference_with_http_info(accept, accept_encoding, user_agent, language, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetPropertyContent200ResponseValueThemesValue>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ContentApi->get_themes_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **language** | **String** | Desired language for the response as a subset of BCP47 format that only uses hyphenated pairs of two-digit language and country codes. Use only ISO 639-1 alpha-2 language codes and ISO 3166-1 alpha-2 country codes. &lt;br&gt;&lt;br&gt;Reference: * [W3 Language Tags](https://www.w3.org/International/articles/language-tags/) * [Language Options](https://developers.expediagroup.com/docs/rapid/resources/reference/language-options)  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Hash&lt;String, GetPropertyContent200ResponseValueThemesValue&gt;**](GetPropertyContent200ResponseValueThemesValue.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

