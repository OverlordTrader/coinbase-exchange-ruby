# CoinbasePro::ConversionsApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_conversion**](ConversionsApi.md#exchange_restapi_get_conversion) | **GET** /conversions/{conversion_id} | Get a conversion |
| [**exchange_restapi_post_conversion**](ConversionsApi.md#exchange_restapi_post_conversion) | **POST** /conversions | Convert currency |


## exchange_restapi_get_conversion

> <ApiConversion> exchange_restapi_get_conversion(conversion_id, opts)

Get a conversion

Gets a currency conversion by id (i.e. USD -> USDC).

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

api_instance = CoinbasePro::ConversionsApi.new
conversion_id = 'conversion_id_example' # String | 
opts = {
  profile_id: 'profile_id_example' # String | 
}

begin
  # Get a conversion
  result = api_instance.exchange_restapi_get_conversion(conversion_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ConversionsApi->exchange_restapi_get_conversion: #{e}"
end
```

#### Using the exchange_restapi_get_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiConversion>, Integer, Hash)> exchange_restapi_get_conversion_with_http_info(conversion_id, opts)

```ruby
begin
  # Get a conversion
  data, status_code, headers = api_instance.exchange_restapi_get_conversion_with_http_info(conversion_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiConversion>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ConversionsApi->exchange_restapi_get_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversion_id** | **String** |  |  |
| **profile_id** | **String** |  | [optional] |

### Return type

[**ApiConversion**](ApiConversion.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_post_conversion

> <ApiConversion> exchange_restapi_post_conversion(api_post_conversion_request)

Convert currency

Converts funds from `from` currency to `to` currency. Funds are converted on the `from` account in the `profile_id` profile.

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

api_instance = CoinbasePro::ConversionsApi.new
api_post_conversion_request = CoinbasePro::ApiPostConversionRequest.new({from: 'from_example', to: 'to_example', amount: 'amount_example'}) # ApiPostConversionRequest | 

begin
  # Convert currency
  result = api_instance.exchange_restapi_post_conversion(api_post_conversion_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ConversionsApi->exchange_restapi_post_conversion: #{e}"
end
```

#### Using the exchange_restapi_post_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiConversion>, Integer, Hash)> exchange_restapi_post_conversion_with_http_info(api_post_conversion_request)

```ruby
begin
  # Convert currency
  data, status_code, headers = api_instance.exchange_restapi_post_conversion_with_http_info(api_post_conversion_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiConversion>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ConversionsApi->exchange_restapi_post_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_conversion_request** | [**ApiPostConversionRequest**](ApiPostConversionRequest.md) |  |  |

### Return type

[**ApiConversion**](ApiConversion.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

