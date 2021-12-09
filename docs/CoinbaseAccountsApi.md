# CoinbasePro::CoinbaseAccountsApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_coinbase_accounts**](CoinbaseAccountsApi.md#exchange_restapi_get_coinbase_accounts) | **GET** /coinbase-accounts | Get all Coinbase wallets |
| [**exchange_restapi_post_coinbase_account_addresses**](CoinbaseAccountsApi.md#exchange_restapi_post_coinbase_account_addresses) | **POST** /coinbase-accounts/{account_id}/addresses | Generate crypto address |


## exchange_restapi_get_coinbase_accounts

> <Array<ApiCoinbaseAccount>> exchange_restapi_get_coinbase_accounts

Get all Coinbase wallets

Gets all the user's available Coinbase wallets (These are the wallets/accounts that are used for buying and selling on www.coinbase.com)

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

api_instance = CoinbasePro::CoinbaseAccountsApi.new

begin
  # Get all Coinbase wallets
  result = api_instance.exchange_restapi_get_coinbase_accounts
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling CoinbaseAccountsApi->exchange_restapi_get_coinbase_accounts: #{e}"
end
```

#### Using the exchange_restapi_get_coinbase_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiCoinbaseAccount>>, Integer, Hash)> exchange_restapi_get_coinbase_accounts_with_http_info

```ruby
begin
  # Get all Coinbase wallets
  data, status_code, headers = api_instance.exchange_restapi_get_coinbase_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiCoinbaseAccount>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling CoinbaseAccountsApi->exchange_restapi_get_coinbase_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ApiCoinbaseAccount&gt;**](ApiCoinbaseAccount.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_post_coinbase_account_addresses

> <ApiCoinbaseAccountGeneratedDepositAddress> exchange_restapi_post_coinbase_account_addresses(account_id)

Generate crypto address

Generates a one-time crypto address for depositing crypto.

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

api_instance = CoinbasePro::CoinbaseAccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # Generate crypto address
  result = api_instance.exchange_restapi_post_coinbase_account_addresses(account_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling CoinbaseAccountsApi->exchange_restapi_post_coinbase_account_addresses: #{e}"
end
```

#### Using the exchange_restapi_post_coinbase_account_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCoinbaseAccountGeneratedDepositAddress>, Integer, Hash)> exchange_restapi_post_coinbase_account_addresses_with_http_info(account_id)

```ruby
begin
  # Generate crypto address
  data, status_code, headers = api_instance.exchange_restapi_post_coinbase_account_addresses_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCoinbaseAccountGeneratedDepositAddress>
rescue CoinbasePro::ApiError => e
  puts "Error when calling CoinbaseAccountsApi->exchange_restapi_post_coinbase_account_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**ApiCoinbaseAccountGeneratedDepositAddress**](ApiCoinbaseAccountGeneratedDepositAddress.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

