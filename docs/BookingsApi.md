# ExpediaRapid::BookingsApi

All URIs are relative to *https://test.ean.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_itinerary**](BookingsApi.md#post_itinerary) | **POST** /itineraries | Create Booking |
| [**post_payment_sessions**](BookingsApi.md#post_payment_sessions) | **POST** /payment-sessions | Register Payments |
| [**put_complete_payment_session**](BookingsApi.md#put_complete_payment_session) | **PUT** /itineraries/{itinerary_id}/payment-sessions | Complete Payment Session |
| [**put_resume_booking**](BookingsApi.md#put_resume_booking) | **PUT** /itineraries/{itinerary_id} | Resume Booking |


## post_itinerary

> <PostItinerary201Response> post_itinerary(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_itinerary_request, opts)

Create Booking

This link will be available in the Price Check response or in the register payments response when Two-Factor Authentication is used. It returns an itinerary id and links to retrieve reservation details, cancel a held booking, resume a held booking or complete payment session. Please note that depending on the state of the booking, the response will contain only the applicable link(s). 

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

api_instance = ExpediaRapid::BookingsApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
content_type = 'application/json' # String | This parameter is to specify what format the request body is in. The only supported value is application/json. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
post_itinerary_request = ExpediaRapid::PostItineraryRequest.new({email: 'email_example', phone: ExpediaRapid::PostItineraryRequestPhone.new({country_code: 'country_code_example', number: 'number_example'}), rooms: [ExpediaRapid::PostItineraryRequestRoomsInner.new({given_name: 'given_name_example', family_name: 'family_name_example'})]}) # PostItineraryRequest | 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The book call has a test header that can be used to return set responses with the following keywords:<br> * `standard` * `complete_payment_session` * `service_unavailable` * `internal_server_error` * `price_mismatch` * `cc_declined` * `rooms_unavailable` 
}

begin
  # Create Booking
  result = api_instance.post_itinerary(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_itinerary_request, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->post_itinerary: #{e}"
end
```

#### Using the post_itinerary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostItinerary201Response>, Integer, Hash)> post_itinerary_with_http_info(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_itinerary_request, opts)

```ruby
begin
  # Create Booking
  data, status_code, headers = api_instance.post_itinerary_with_http_info(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_itinerary_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostItinerary201Response>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->post_itinerary_with_http_info: #{e}"
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
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **post_itinerary_request** | [**PostItineraryRequest**](PostItineraryRequest.md) |  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The book call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; * &#x60;complete_payment_session&#x60; * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60; * &#x60;price_mismatch&#x60; * &#x60;cc_declined&#x60; * &#x60;rooms_unavailable&#x60;  | [optional] |

### Return type

[**PostItinerary201Response**](PostItinerary201Response.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_payment_sessions

> <PostPaymentSessions201Response> post_payment_sessions(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_payment_sessions_request, opts)

Register Payments

<b>This link only applies to transactions where EPS takes the customer's payment information. This includes both Expedia Collect and Property Collect transactions.</b><br> This link will be available in the Price Check response if payment registration is required. It returns a payment session ID and a link to create a booking. This will be the first step in the booking flow only if you've opted into Two-Factor Authentication to comply with the September 2019 EU Regulations for PSD2. Learn more with our [PSD2 Overview](https://developers.expediagroup.com/docs/rapid/lodging/booking/psd2-regulation) 

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

api_instance = ExpediaRapid::BookingsApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
content_type = 'application/json' # String | This parameter is to specify what format the request body is in. The only supported value is application/json. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
post_payment_sessions_request = ExpediaRapid::PostPaymentSessionsRequest.new({version: 'version_example', browser_accept_header: 'browser_accept_header_example', encoded_browser_metadata: 'encoded_browser_metadata_example', preferred_challenge_window_size: 'extra_small', merchant_url: 'merchant_url_example', customer_account_details: ExpediaRapid::PostPaymentSessionsRequestCustomerAccountDetails.new, payments: [ExpediaRapid::PostPaymentSessionsRequestPaymentsInner.new({type: 'corporate_card', billing_contact: ExpediaRapid::PostPaymentSessionsRequestPaymentsInnerBillingContact.new({given_name: 'given_name_example', family_name: 'family_name_example', address: ExpediaRapid::PostPaymentSessionsRequestPaymentsInnerBillingContactAddress.new({country_code: 'country_code_example'})})})]}) # PostPaymentSessionsRequest | 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The book call has a test header that can be used to return set responses with the following keywords:<br> * `standard` * `service_unavailable` * `internal_server_error` 
}

begin
  # Register Payments
  result = api_instance.post_payment_sessions(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_payment_sessions_request, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->post_payment_sessions: #{e}"
end
```

#### Using the post_payment_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPaymentSessions201Response>, Integer, Hash)> post_payment_sessions_with_http_info(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_payment_sessions_request, opts)

```ruby
begin
  # Register Payments
  data, status_code, headers = api_instance.post_payment_sessions_with_http_info(accept, accept_encoding, content_type, customer_ip, user_agent, token, post_payment_sessions_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPaymentSessions201Response>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->post_payment_sessions_with_http_info: #{e}"
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
| **token** | **String** | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed.  |  |
| **post_payment_sessions_request** | [**PostPaymentSessionsRequest**](PostPaymentSessionsRequest.md) |  |  |
| **customer_session_id** | **String** | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user&#39;s session, using a new value for every new customer session.&lt;br&gt; Including this value greatly eases EPS&#39;s internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user&#39;s session.  | [optional] |
| **test** | **String** | The book call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60;  | [optional] |

### Return type

[**PostPaymentSessions201Response**](PostPaymentSessions201Response.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_complete_payment_session

> <PutCompletePaymentSession200Response> put_complete_payment_session(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

Complete Payment Session

<b>This link only applies to transactions where EPS takes the customer's payment information. This includes both Expedia Collect and Property Collect transactions.</b><br> This link will be available in the booking response only if you've opted into Two-Factor Authentication to comply with the September 2019 EU Regulations for PSD2. It should be called after Two-Factor Authentication has been completed by the customer in order to finalize the payment and complete the booking or hold attempt. Learn more with our [PSD2 Overview](https://developers.expediagroup.com/docs/rapid/lodging/booking/psd2-regulation) 

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

api_instance = ExpediaRapid::BookingsApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The payment-sessions call has a test header that can be used to return set responses with the following keywords:<br> * `standard` * `service_unavailable` * `internal_server_error` 
}

begin
  # Complete Payment Session
  result = api_instance.put_complete_payment_session(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->put_complete_payment_session: #{e}"
end
```

#### Using the put_complete_payment_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutCompletePaymentSession200Response>, Integer, Hash)> put_complete_payment_session_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

```ruby
begin
  # Complete Payment Session
  data, status_code, headers = api_instance.put_complete_payment_session_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutCompletePaymentSession200Response>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->put_complete_payment_session_with_http_info: #{e}"
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
| **test** | **String** | The payment-sessions call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; * &#x60;service_unavailable&#x60; * &#x60;internal_server_error&#x60;  | [optional] |

### Return type

[**PutCompletePaymentSession200Response**](PutCompletePaymentSession200Response.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_resume_booking

> put_resume_booking(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

Resume Booking

This link will be available in the booking response after creating a held booking. 

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

api_instance = ExpediaRapid::BookingsApi.new
accept = 'application/json' # String | Specifies the response format that the client would like to receive back. This must be `application/json`. 
accept_encoding = 'gzip' # String | Specifies the response encoding that the client would like to receive back. This must be `gzip`. 
customer_ip = '5.5.5.5' # String | IP address of the customer, as captured by your integration.<br> Ensure your integration passes the customer's IP, not your own. This value helps determine their location and assign the correct payment gateway.<br> Also used for fraud recovery and other important analytics. 
user_agent = 'TravelNow/3.30.112' # String | The `User-Agent` header string from the customer's request, as captured by your integration. If you are building an application then the `User-Agent` value should be `{app name}/{app version}`. 
itinerary_id = '8955599932111' # String | This parameter is used only to prefix the token value - no ID value is used.<br> 
token = 'token_example' # String | Provided as part of the link object and used to maintain state across calls. This simplifies each subsequent call by limiting the amount of information required at each step and reduces the potential for errors. Token values cannot be viewed or changed. 
opts = {
  customer_session_id: 'customer_session_id_example', # String | Insert your own unique value for each user session, beginning with the first API call. Continue to pass the same value for each subsequent API call during the user's session, using a new value for every new customer session.<br> Including this value greatly eases EPS's internal debugging process for issues with partner requests, as it explicitly links together request paths for individual user's session. 
  test: 'standard' # String | The resume call has a test header that can be used to return set responses with the following keywords:<br> * `standard` - Requires valid test held booking. * `service_unavailable` - Returns the HTTP 202 response caused by partial service unavailablity. * `internal_server_error` 
}

begin
  # Resume Booking
  api_instance.put_resume_booking(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->put_resume_booking: #{e}"
end
```

#### Using the put_resume_booking_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_resume_booking_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)

```ruby
begin
  # Resume Booking
  data, status_code, headers = api_instance.put_resume_booking_with_http_info(accept, accept_encoding, customer_ip, user_agent, itinerary_id, token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ExpediaRapid::ApiError => e
  puts "Error when calling BookingsApi->put_resume_booking_with_http_info: #{e}"
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
| **test** | **String** | The resume call has a test header that can be used to return set responses with the following keywords:&lt;br&gt; * &#x60;standard&#x60; - Requires valid test held booking. * &#x60;service_unavailable&#x60; - Returns the HTTP 202 response caused by partial service unavailablity. * &#x60;internal_server_error&#x60;  | [optional] |

### Return type

nil (empty response body)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

