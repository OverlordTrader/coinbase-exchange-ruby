# CoinbasePro::CurrenciesApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_currencies**](CurrenciesApi.md#exchange_restapi_get_currencies) | **GET** /currencies | Get all known currencies |
| [**exchange_restapi_get_currency**](CurrenciesApi.md#exchange_restapi_get_currency) | **GET** /currencies/{currency_id} | Get a currency |


## exchange_restapi_get_currencies

> <Array<ApiCurrency>> exchange_restapi_get_currencies

Get all known currencies

Gets a list of all known currencies.  Note: Not all currencies may be currently in use for trading.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::CurrenciesApi.new

begin
  # Get all known currencies
  result = api_instance.exchange_restapi_get_currencies
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling CurrenciesApi->exchange_restapi_get_currencies: #{e}"
end
```

#### Using the exchange_restapi_get_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiCurrency>>, Integer, Hash)> exchange_restapi_get_currencies_with_http_info

```ruby
begin
  # Get all known currencies
  data, status_code, headers = api_instance.exchange_restapi_get_currencies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiCurrency>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling CurrenciesApi->exchange_restapi_get_currencies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ApiCurrency&gt;**](ApiCurrency.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_currency

> <ApiCurrency> exchange_restapi_get_currency(currency_id)

Get a currency

Gets a single currency by id.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::CurrenciesApi.new
currency_id = 'currency_id_example' # String | 

begin
  # Get a currency
  result = api_instance.exchange_restapi_get_currency(currency_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling CurrenciesApi->exchange_restapi_get_currency: #{e}"
end
```

#### Using the exchange_restapi_get_currency_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCurrency>, Integer, Hash)> exchange_restapi_get_currency_with_http_info(currency_id)

```ruby
begin
  # Get a currency
  data, status_code, headers = api_instance.exchange_restapi_get_currency_with_http_info(currency_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCurrency>
rescue CoinbasePro::ApiError => e
  puts "Error when calling CurrenciesApi->exchange_restapi_get_currency_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_id** | **String** |  |  |

### Return type

[**ApiCurrency**](ApiCurrency.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

