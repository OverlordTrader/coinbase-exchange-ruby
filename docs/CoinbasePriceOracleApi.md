# CoinbasePro::CoinbasePriceOracleApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_coinbase_price_oracle**](CoinbasePriceOracleApi.md#exchange_restapi_get_coinbase_price_oracle) | **GET** /oracle | Get signed prices |


## exchange_restapi_get_coinbase_price_oracle

> <ApiCoinbasePriceOracle> exchange_restapi_get_coinbase_price_oracle

Get signed prices

Get cryptographically signed prices ready to be posted on-chain using Compound's Open Oracle smart contract.

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

api_instance = CoinbasePro::CoinbasePriceOracleApi.new

begin
  # Get signed prices
  result = api_instance.exchange_restapi_get_coinbase_price_oracle
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling CoinbasePriceOracleApi->exchange_restapi_get_coinbase_price_oracle: #{e}"
end
```

#### Using the exchange_restapi_get_coinbase_price_oracle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCoinbasePriceOracle>, Integer, Hash)> exchange_restapi_get_coinbase_price_oracle_with_http_info

```ruby
begin
  # Get signed prices
  data, status_code, headers = api_instance.exchange_restapi_get_coinbase_price_oracle_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCoinbasePriceOracle>
rescue CoinbasePro::ApiError => e
  puts "Error when calling CoinbasePriceOracleApi->exchange_restapi_get_coinbase_price_oracle_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiCoinbasePriceOracle**](ApiCoinbasePriceOracle.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

