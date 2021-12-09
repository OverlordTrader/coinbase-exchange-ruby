# CoinbasePro::FeesApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_fees**](FeesApi.md#exchange_restapi_get_fees) | **GET** /fees | Get fees |


## exchange_restapi_get_fees

> <ApiFees> exchange_restapi_get_fees

Get fees

Get fees rates and 30 days trailing volume.

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

api_instance = CoinbasePro::FeesApi.new

begin
  # Get fees
  result = api_instance.exchange_restapi_get_fees
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling FeesApi->exchange_restapi_get_fees: #{e}"
end
```

#### Using the exchange_restapi_get_fees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiFees>, Integer, Hash)> exchange_restapi_get_fees_with_http_info

```ruby
begin
  # Get fees
  data, status_code, headers = api_instance.exchange_restapi_get_fees_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiFees>
rescue CoinbasePro::ApiError => e
  puts "Error when calling FeesApi->exchange_restapi_get_fees_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiFees**](ApiFees.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

