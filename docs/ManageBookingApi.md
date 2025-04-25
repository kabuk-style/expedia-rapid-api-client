# ExpediaRapid::ManageBookingApi

All URIs are relative to *https://test.ean.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_room_details**](ManageBookingApi.md#change_room_details) | **PUT** /itineraries/{itinerary_id}/rooms/{room_id} | Change details of a room. |
| [**commit_change**](ManageBookingApi.md#commit_change) | **PUT** /itineraries/{itinerary_id}/rooms/{room_id}/pricing | Commit a change of itinerary that may require additional payment or refund. |
| [**delete_held_booking**](ManageBookingApi.md#delete_held_booking) | **DELETE** /itineraries/{itinerary_id} | Cancel Held Booking |
| [**delete_room**](ManageBookingApi.md#delete_room) | **DELETE** /itineraries/{itinerary_id}/rooms/{room_id} | Cancel a room. |
| [**get_booking_receipt**](ManageBookingApi.md#get_booking_receipt) | **GET** /itineraries/{itinerary_id}/invoice | Booking Receipt |
| [**get_reservation**](ManageBookingApi.md#get_reservation) | **GET** /itineraries | Search for and retrieve Bookings with Affiliate Reference Id |
| [**get_reservation_by_itinerary_id**](ManageBookingApi.md#get_reservation_by_itinerary_id) | **GET** /itineraries/{itinerary_id} | Retrieve Booking |


## change_room_details

> change_room_details(accept, accept_encoding, content_type, customer_ip, user_agent, itinerary_id, room_id, token, change_room_details_request, opts)

Change details of a room.

This link will be available in the retrieve response. Changes in smoking preference and special request will be passed along to the property and are not guaranteed. 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
content_type = 'application/json' # String | This parameter is to specify what format the request body is in. The only supported value is application/json. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
room_id = '123abc' # String | Room ID of a property.<br> 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
change_room_details_request = ExpediaRapid::ChangeRoomDetailsRequest.new # ChangeRoomDetailsRequest | The request body is required, but only the fields that are being changed need to be passed in. Fields that are not being changed should not be included in the request body.
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The change call has a test header that can be used to return set responses with the following keywords:<br> * `standard` - Requires valid test booking. * `service_unavailable` * `unknown_internal_error` 
}

begin
  # Change details of a room.
  api_instance.change_room_details(accept, accept_encoding, content_type, customer_ip, user_agent, itinerary_id, room_id, token, change_room_details_request, opts)
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->change_room_details: #{e}"
end
```

#### Using the change_room_details_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> change_room_details_with_http_info(accept, accept_encoding, content_type, customer_ip, user_agent, itinerary_id, room_id, token, change_room_details_request, opts)

```ruby
begin
  # Change details of a room.
  data, status_code, headers = api_instance.change_room_details_with_http_info(accept, accept_encoding, content_type, customer_ip, user_agent, itinerary_id, room_id, token, change_room_details_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->change_room_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **content_type** | **String** | This parameter is to specify what format the request body is in. The only supported value is application/json.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **itinerary_id** | **String** | This parameter is used only to prefix the token value - no ID value is used.&lt;br&gt;  |  |
| **room_id** | **String** | Room ID of a property.&lt;br&gt;  |  |
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **change_room_details_request** | [**ChangeRoomDetailsRequest**](ChangeRoomDetailsRequest.md) | The request body is required, but only the fields that are being changed need to be passed in. Fields that are not being changed should not be included in the request body. |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The change call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; - Requires valid test booking. * &#x60;service_unavailable&#x60; * &#x60;unknown_internal_error&#x60;  | [optional] |

### Return type

nil (empty response body)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## commit_change

> commit_change(accept, accept_encoding, authorization, content_type, customer_ip, user_agent, itinerary_id, room_id, token, opts)

Commit a change of itinerary that may require additional payment or refund.

This link will be available in the change response to confirm and complete the change transaction.  If additional charges are due, a payment must be submitted with this request. Note that Two-Factor  Authentication is not supported at this time. 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
authorization = 'authorization_example' # String | The custom generated authentication header. Refer to our [signature authentication](https://developer.expediapartnersolutions.com/reference/signature-authentication) page for full details.
content_type = 'application/json' # String | This parameter is to specify what format the request body is in. The only supported value is application/json. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
room_id = '123abc' # String | Room ID of a property.<br> 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard', # String | The change call has a test header that can be used to return set responses with the following keywords:<br> * `standard` - Requires valid test booking. * `service_unavailable` * `unknown_internal_error` 
  commit_change_request: ExpediaRapid::CommitChangeRequest.new # CommitChangeRequest | The request body is required if additional payment is necessary. The body can optionally contain the `change_reference_id`. 
}

begin
  # Commit a change of itinerary that may require additional payment or refund.
  api_instance.commit_change(accept, accept_encoding, authorization, content_type, customer_ip, user_agent, itinerary_id, room_id, token, opts)
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->commit_change: #{e}"
end
```

#### Using the commit_change_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commit_change_with_http_info(accept, accept_encoding, authorization, content_type, customer_ip, user_agent, itinerary_id, room_id, token, opts)

```ruby
begin
  # Commit a change of itinerary that may require additional payment or refund.
  data, status_code, headers = api_instance.commit_change_with_http_info(accept, accept_encoding, authorization, content_type, customer_ip, user_agent, itinerary_id, room_id, token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->commit_change_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **authorization** | **String** | The custom generated authentication header. Refer to our [signature authentication](https://developer.expediapartnersolutions.com/reference/signature-authentication) page for full details. |  |
| **content_type** | **String** | This parameter is to specify what format the request body is in. The only supported value is application/json.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **itinerary_id** | **String** | This parameter is used only to prefix the token value - no ID value is used.&lt;br&gt;  |  |
| **room_id** | **String** | Room ID of a property.&lt;br&gt;  |  |
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The change call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; - Requires valid test booking. * &#x60;service_unavailable&#x60; * &#x60;unknown_internal_error&#x60;  | [optional] |
| **commit_change_request** | [**CommitChangeRequest**](CommitChangeRequest.md) | The request body is required if additional payment is necessary. The body can optionally contain the &#x60;change_reference_id&#x60;.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_held_booking

> delete_held_booking(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

Cancel Held Booking

This link will be available in a held booking response. 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The cancel call has a test header that can be used to return set responses with the following keywords:<br> * `standard` - Requires valid test held booking. * `service_unavailable` * `internal_server_error` * `post_stay_cancel` 
}

begin
  # Cancel Held Booking
  api_instance.delete_held_booking(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->delete_held_booking: #{e}"
end
```

#### Using the delete_held_booking_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_held_booking_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

```ruby
begin
  # Cancel Held Booking
  data, status_code, headers = api_instance.delete_held_booking_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->delete_held_booking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **itinerary_id** | **String** | This parameter is used only to prefix the token value - no ID value is used.&lt;br&gt;  |  |
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The cancel call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; - Requires valid test held booking. * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60; * &#x60;post_stay_cancel&#x60;  | [optional] |

### Return type

nil (empty response body)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_room

> delete_room(accept, accept_encoding, customer_ip, user_agent, itinerary_id, room_id, token, opts)

Cancel a room.

This link will be available in the retrieve response. 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
room_id = '123abc' # String | Room ID of a property.<br> 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The cancel call has a test header that can be used to return set responses with the following keywords:<br> * `standard` - Requires valid test booking. * `service_unavailable` * `unknown_internal_error` * `post_stay_cancel` 
}

begin
  # Cancel a room.
  api_instance.delete_room(accept, accept_encoding, customer_ip, user_agent, itinerary_id, room_id, token, opts)
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->delete_room: #{e}"
end
```

#### Using the delete_room_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_room_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, room_id, token, opts)

```ruby
begin
  # Cancel a room.
  data, status_code, headers = api_instance.delete_room_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, room_id, token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->delete_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **itinerary_id** | **String** | This parameter is used only to prefix the token value - no ID value is used.&lt;br&gt;  |  |
| **room_id** | **String** | Room ID of a property.&lt;br&gt;  |  |
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The cancel call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; - Requires valid test booking. * &#x60;service_unavailable&#x60; * &#x60;unknown_internal_error&#x60; * &#x60;post_stay_cancel&#x60;  | [optional] |

### Return type

nil (empty response body)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_booking_receipt

> File get_booking_receipt(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

Booking Receipt

A link to the booking receipt will be provided in the retrieve response if partner configuration enabled. This endpoint will provide a PDF representation of a booking receipt that can be presented to a traveler for expense tracking purposes. 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/pdf' # String | Specifies the response format that the client would like to receive back. This must be `application/pdf`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = 'customer_ip_example' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This path variable will be provided as part of the link. This specifies which itinerary the booking receipt request pertains to. 
token = 'MY5S3j36cOcLfLBZjPYQ1abhfc8CqmjmFVzkk7euvWaunE57LLeDgaxm516m' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard', # String | The booking receipt call has a test header that can be used to return set responses with the following keywords: * `standard` * `service_unavailable` * `internal_server_error` 
  branding: 'expedia_group' # String | This parameter specifies which branding should be present on the generated PDF. Default behavior will be to provide the booking receipt with `expedia_group` branding. Some partner configurations may change the default to unbranded. 
}

begin
  # Booking Receipt
  result = api_instance.get_booking_receipt(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->get_booking_receipt: #{e}"
end
```

#### Using the get_booking_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_booking_receipt_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

```ruby
begin
  # Booking Receipt
  data, status_code, headers = api_instance.get_booking_receipt_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->get_booking_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/pdf&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **itinerary_id** | **String** | This path variable will be provided as part of the link. This specifies which itinerary the booking receipt request pertains to.  |  |
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The booking receipt call has a test header that can be used to return set responses with the following keywords: * &#x60;standard&#x60; * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60;  | [optional] |
| **branding** | **String** | This parameter specifies which branding should be present on the generated PDF. Default behavior will be to provide the booking receipt with &#x60;expedia_group&#x60; branding. Some partner configurations may change the default to unbranded.  | [optional] |

### Return type

**File**

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_reservation

> <Array<GetReservation200ResponseInner>> get_reservation(accept, accept_encoding, customer_ip, user_agent, affiliate_reference_id, email, opts)

Search for and retrieve Bookings with Affiliate Reference Id

This can be called directly without a token when an affiliate reference id is provided. It returns details about bookings associated with an affiliate reference id, along with cancel links to cancel the bookings.  <i>Note: Newly created itineraries may sometimes have a small delay between the time of creation and the time that the itinerary can be retrieved. If you receive no results while trying to search for an itinerary that was successfully created, or if you receive a response with two fields, namely, `itinerary_id` and `creation_date_time`, then please wait a few minutes before trying to search for the itinerary again.</i> 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
affiliate_reference_id = '111A222BB33344CC5555' # String | The affilliate reference id value. This field supports a maximum of 28 characters. 
email = 'test@example.com' # String | Email associated with the booking. Special characters in the local part or domain should be encoded.<br> 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard', # String | The retrieve call has a test header that can be used to return set responses with the following keywords:<br> * `standard` - Requires valid test booking. * `degraded_response` - Requires valid test booking * `service_unavailable` * `internal_server_error` 
  include: ['history'] # Array<String> | Options for which information to return in the response. The value must be lower case. * `history` - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to `other` in the response.   * `history_v2` - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to `supplier` in the response. See the [Itinerary history](https://developers.expediagroup.com/docs/rapid/lodging/manage-booking/itinerary-history#overview) for details. 
}

begin
  # Search for and retrieve Bookings with Affiliate Reference Id
  result = api_instance.get_reservation(accept, accept_encoding, customer_ip, user_agent, affiliate_reference_id, email, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->get_reservation: #{e}"
end
```

#### Using the get_reservation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetReservation200ResponseInner>>, Integer, Hash)> get_reservation_with_http_info(accept, accept_encoding, customer_ip, user_agent, affiliate_reference_id, email, opts)

```ruby
begin
  # Search for and retrieve Bookings with Affiliate Reference Id
  data, status_code, headers = api_instance.get_reservation_with_http_info(accept, accept_encoding, customer_ip, user_agent, affiliate_reference_id, email, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetReservation200ResponseInner>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->get_reservation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **affiliate_reference_id** | **String** | The affilliate reference id value. This field supports a maximum of 28 characters.  |  |
| **email** | **String** | Email associated with the booking. Special characters in the local part or domain should be encoded.&lt;br&gt;  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The retrieve call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; - Requires valid test booking. * &#x60;degraded_response&#x60; - Requires valid test booking * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60;  | [optional] |
| **include** | [**Array&lt;String&gt;**](String.md) | Options for which information to return in the response. The value must be lower case. * &#x60;history&#x60; - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to &#x60;other&#x60; in the response.   * &#x60;history_v2&#x60; - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to &#x60;supplier&#x60; in the response. See the [Itinerary history](https://developers.expediagroup.com/docs/rapid/lodging/manage-booking/itinerary-history#overview) for details.  | [optional] |

### Return type

[**Array&lt;GetReservation200ResponseInner&gt;**](GetReservation200ResponseInner.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reservation_by_itinerary_id

> <GetReservation200ResponseInner> get_reservation_by_itinerary_id(accept, accept_encoding, customer_ip, user_agent, itinerary_id, opts)

Retrieve Booking

This API call returns itinerary details and links to resume or cancel the booking. There are two methods to retrieve a booking: * Using the link included in the original Book response, example: https://api.ean.com/v3/itineraries/8955599932111?token=QldfCGlcUA4GXVlSAQ4W * Using the email of the booking. If the email contains special characters, they must be encoded to successfully retrieve the booking. Example: https://api.ean.com/v3/itineraries/8955599932111?email=customer@email.com  <i>Note: Newly created itineraries may sometimes have a small delay between the time of creation and the time that the itinerary can be retrieved. If you receive an error when trying to retrieve an itinerary that was successfully created, or if you receive a response with two fields, namely, `itinerary_id` and `creation_date_time`, then please wait a few minutes before trying to retrieve the itinerary again.</i> 

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

api_instance = ExpediaRapid::ManageBookingApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard', # String | The retrieve call has a test header that can be used to return set responses. Passing standard in the Test header will retrieve a test booking, and passing any of the errors listed below will return a stubbed error response that you can use to test your error handling code. Additionally, refer to the Test Request documentation for more details on how these header values are used. * `standard` - Requires valid test booking. * `degraded_response` - Requires valid test booking * `service_unavailable` * `internal_server_error` 
  token: 'token_example', # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
  email: 'email_example', # String | Email associated with the booking. Special characters in the local part or domain should be encoded. (Email is required if the token is not provided the request) <br> 
  include: ['history'] # Array<String> | Options for which information to return in the response. The value must be lower case. * `history` - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to `other` in the response.   * `history_v2` - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to `supplier` in the response. See the [Itinerary history](https://developers.expediagroup.com/docs/rapid/lodging/manage-booking/itinerary-history#overview) for details. 
}

begin
  # Retrieve Booking
  result = api_instance.get_reservation_by_itinerary_id(accept, accept_encoding, customer_ip, user_agent, itinerary_id, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->get_reservation_by_itinerary_id: #{e}"
end
```

#### Using the get_reservation_by_itinerary_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReservation200ResponseInner>, Integer, Hash)> get_reservation_by_itinerary_id_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, opts)

```ruby
begin
  # Retrieve Booking
  data, status_code, headers = api_instance.get_reservation_by_itinerary_id_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReservation200ResponseInner>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling ManageBookingApi->get_reservation_by_itinerary_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | Specifies the response format that the client would like to receive back. This must be &#x60;application/json&#x60;.  |  |
| **accept_encoding** | **String** | Specifies the response encoding that the client would like to receive back. This must be &#x60;gzip&#x60;.  |  |
| **customer_ip** | **String** | IP address of the customer, as captured by your integration.&lt;br&gt; Ensure your integration passes the customer&#39;s IP, not your own. This value helps determine their location and assign the correct payment gateway.&lt;br&gt; Also used for fraud recovery and other important analytics.  |  |
| **user_agent** | **String** | The &#x60;User-Agent&#x60; header string from the customer&#39;s request, as captured by your integration. If you are building an application then the &#x60;User-Agent&#x60; value should be &#x60;{app name}/{app version}&#x60;.  |  |
| **itinerary_id** | **String** | This parameter is used only to prefix the token value - no ID value is used.&lt;br&gt;  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The retrieve call has a test header that can be used to return set responses. Passing standard in the Test header will retrieve a test booking, and passing any of the errors listed below will return a stubbed error response that you can use to test your error handling code. Additionally, refer to the Test Request documentation for more details on how these header values are used. * &#x60;standard&#x60; - Requires valid test booking. * &#x60;degraded_response&#x60; - Requires valid test booking * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60;  | [optional] |
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  | [optional] |
| **email** | **String** | Email associated with the booking. Special characters in the local part or domain should be encoded. (Email is required if the token is not provided the request) &lt;br&gt;  | [optional] |
| **include** | [**Array&lt;String&gt;**](String.md) | Options for which information to return in the response. The value must be lower case. * &#x60;history&#x60; - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to &#x60;other&#x60; in the response.   * &#x60;history_v2&#x60; - Include itinerary history, showing details of the changes made to this itinerary. Changes from the property/supplier have an event_source equal to &#x60;supplier&#x60; in the response. See the [Itinerary history](https://developers.expediagroup.com/docs/rapid/lodging/manage-booking/itinerary-history#overview) for details.  | [optional] |

### Return type

[**GetReservation200ResponseInner**](GetReservation200ResponseInner.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

