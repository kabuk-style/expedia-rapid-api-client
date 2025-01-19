# ExpediaRapid::NotificationsApi

All URIs are relative to *https://test.ean.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**request_test_notification**](NotificationsApi.md#request_test_notification) | **POST** /notifications | Request Test Notification |
| [**request_undelivered_notifications**](NotificationsApi.md#request_undelivered_notifications) | **GET** /notifications | Request Undelivered Notifications |


## request_test_notification

> request_test_notification(request_test_notification_request, opts)

Request Test Notification

This request triggers a test notification according to the specified event_type. All event types supported by the Notifications API are available to test. 

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

api_instance = ExpediaRapid::NotificationsApi.new
request_test_notification_request = ExpediaRapid::RequestTestNotificationRequest.new({event_type: 'event_type_example'}) # RequestTestNotificationRequest | 
opts = {
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Request Test Notification
  api_instance.request_test_notification(request_test_notification_request, opts)
rescue ExpediaRapid::ApiError => e
  puts "Error when calling NotificationsApi->request_test_notification: #{e}"
end
```

#### Using the request_test_notification_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> request_test_notification_with_http_info(request_test_notification_request, opts)

```ruby
begin
  # Request Test Notification
  data, status_code, headers = api_instance.request_test_notification_with_http_info(request_test_notification_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ExpediaRapid::ApiError => e
  puts "Error when calling NotificationsApi->request_test_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_test_notification_request** | [**RequestTestNotificationRequest**](RequestTestNotificationRequest.md) |  |  |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_undelivered_notifications

> <Array<RequestUndeliveredNotifications200ResponseInner>> request_undelivered_notifications(undeliverable, opts)

Request Undelivered Notifications

Use this API to fetch undelivered notifications. Up to 25 notifications are returned with each call. Each undelivered notification will be returned only once. 

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

api_instance = ExpediaRapid::NotificationsApi.new
undeliverable = true # Boolean | Undeliverable notifications are returned when this parameter is set to `true`.
opts = {
  billing_terms: 'billing_terms_example', # String | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately. 
  partner_point_of_sale: 'partner_point_of_sale_example', # String | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
  payment_terms: 'payment_terms_example', # String | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately. 
  platform_name: 'platform_name_example' # String | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately. 
}

begin
  # Request Undelivered Notifications
  result = api_instance.request_undelivered_notifications(undeliverable, opts)
  p result
rescue ExpediaRapid::ApiError => e
  puts "Error when calling NotificationsApi->request_undelivered_notifications: #{e}"
end
```

#### Using the request_undelivered_notifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RequestUndeliveredNotifications200ResponseInner>>, Integer, Hash)> request_undelivered_notifications_with_http_info(undeliverable, opts)

```ruby
begin
  # Request Undelivered Notifications
  data, status_code, headers = api_instance.request_undelivered_notifications_with_http_info(undeliverable, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RequestUndeliveredNotifications200ResponseInner>>
rescue ExpediaRapid::ApiError => e
  puts "Error when calling NotificationsApi->request_undelivered_notifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **undeliverable** | **Boolean** | Undeliverable notifications are returned when this parameter is set to &#x60;true&#x60;. |  |
| **billing_terms** | **String** | This parameter is to specify the terms of how a resulting booking should be billed. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **partner_point_of_sale** | **String** | This parameter is to specify what point of sale is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **payment_terms** | **String** | This parameter is to specify what terms should be used when being paid for a resulting booking. If this field is needed, the value for this will be provided to you separately.  | [optional] |
| **platform_name** | **String** | This parameter is to specify what platform is being used to shop and book. If this field is needed, the value for this will be provided to you separately.  | [optional] |

### Return type

[**Array&lt;RequestUndeliveredNotifications200ResponseInner&gt;**](RequestUndeliveredNotifications200ResponseInner.md)

### Authorization

[rapidAuth](../README.md#rapidAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

