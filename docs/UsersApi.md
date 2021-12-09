# CoinbasePro::UsersApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_user_exchange_limits**](UsersApi.md#exchange_restapi_get_user_exchange_limits) | **GET** /users/{user_id}/exchange-limits | Get user exchange limits |


## exchange_restapi_get_user_exchange_limits

> <ApiUserExchangeTransferLimits> exchange_restapi_get_user_exchange_limits(user_id)

Get user exchange limits

Gets exchange limits information for a single user.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'
# setup authorization
CoinbasePro.configure do |config|
  # Configure API key authorization: ApiKeyAuthKey
  config.api_key['cb-access-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-key'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthPassphrase
  config.api_key['cb-access-passphrase'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-passphrase'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthSign
  config.api_key['cb-access-sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-sign'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthTimestamp
  config.api_key['cb-access-timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-timestamp'] = 'Bearer'
end

api_instance = CoinbasePro::UsersApi.new
user_id = 'user_id_example' # String | 

begin
  # Get user exchange limits
  result = api_instance.exchange_restapi_get_user_exchange_limits(user_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling UsersApi->exchange_restapi_get_user_exchange_limits: #{e}"
end
```

#### Using the exchange_restapi_get_user_exchange_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiUserExchangeTransferLimits>, Integer, Hash)> exchange_restapi_get_user_exchange_limits_with_http_info(user_id)

```ruby
begin
  # Get user exchange limits
  data, status_code, headers = api_instance.exchange_restapi_get_user_exchange_limits_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiUserExchangeTransferLimits>
rescue CoinbasePro::ApiError => e
  puts "Error when calling UsersApi->exchange_restapi_get_user_exchange_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

[**ApiUserExchangeTransferLimits**](ApiUserExchangeTransferLimits.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

