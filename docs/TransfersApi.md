# CoinbasePro::TransfersApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_payment_methods**](TransfersApi.md#exchange_restapi_get_payment_methods) | **GET** /payment-methods | Get all payment methods |
| [**exchange_restapi_get_transfer**](TransfersApi.md#exchange_restapi_get_transfer) | **GET** /transfers/{transfer_id} | Get a single transfer |
| [**exchange_restapi_get_transfers**](TransfersApi.md#exchange_restapi_get_transfers) | **GET** /transfers | Get all transfers |
| [**exchange_restapi_get_withdraw_fee_estimate**](TransfersApi.md#exchange_restapi_get_withdraw_fee_estimate) | **GET** /withdrawals/fee-estimate | Get fee estimate for crypto withdrawal |
| [**exchange_restapi_post_deposit_coinbase_account**](TransfersApi.md#exchange_restapi_post_deposit_coinbase_account) | **POST** /deposits/coinbase-account | Deposit from Coinbase account |
| [**exchange_restapi_post_deposit_payment_method**](TransfersApi.md#exchange_restapi_post_deposit_payment_method) | **POST** /deposits/payment-method | Deposit from payment method |
| [**exchange_restapi_post_withdraw_coinbase_account**](TransfersApi.md#exchange_restapi_post_withdraw_coinbase_account) | **POST** /withdrawals/coinbase-account | Withdraw to Coinbase account |
| [**exchange_restapi_post_withdraw_crypto**](TransfersApi.md#exchange_restapi_post_withdraw_crypto) | **POST** /withdrawals/crypto | Withdraw to crypto address |
| [**exchange_restapi_post_withdraw_payment_method**](TransfersApi.md#exchange_restapi_post_withdraw_payment_method) | **POST** /withdrawals/payment-method | Withdraw to payment method |


## exchange_restapi_get_payment_methods

> <Array<ApiPaymentMethod>> exchange_restapi_get_payment_methods

Get all payment methods

Gets a list of the user's linked payment methods.

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

api_instance = CoinbasePro::TransfersApi.new

begin
  # Get all payment methods
  result = api_instance.exchange_restapi_get_payment_methods
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_payment_methods: #{e}"
end
```

#### Using the exchange_restapi_get_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiPaymentMethod>>, Integer, Hash)> exchange_restapi_get_payment_methods_with_http_info

```ruby
begin
  # Get all payment methods
  data, status_code, headers = api_instance.exchange_restapi_get_payment_methods_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiPaymentMethod>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_payment_methods_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ApiPaymentMethod&gt;**](ApiPaymentMethod.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_transfer

> <ApiTransfer> exchange_restapi_get_transfer(transfer_id)

Get a single transfer

Get information on a single transfer.

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

api_instance = CoinbasePro::TransfersApi.new
transfer_id = 'transfer_id_example' # String | 

begin
  # Get a single transfer
  result = api_instance.exchange_restapi_get_transfer(transfer_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_transfer: #{e}"
end
```

#### Using the exchange_restapi_get_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTransfer>, Integer, Hash)> exchange_restapi_get_transfer_with_http_info(transfer_id)

```ruby
begin
  # Get a single transfer
  data, status_code, headers = api_instance.exchange_restapi_get_transfer_with_http_info(transfer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTransfer>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_id** | **String** |  |  |

### Return type

[**ApiTransfer**](ApiTransfer.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_transfers

> <Array<ApiTransfer>> exchange_restapi_get_transfers

Get all transfers

Gets a list of in-progress and completed transfers of funds in/out of any of the user's accounts.

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

api_instance = CoinbasePro::TransfersApi.new

begin
  # Get all transfers
  result = api_instance.exchange_restapi_get_transfers
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_transfers: #{e}"
end
```

#### Using the exchange_restapi_get_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiTransfer>>, Integer, Hash)> exchange_restapi_get_transfers_with_http_info

```ruby
begin
  # Get all transfers
  data, status_code, headers = api_instance.exchange_restapi_get_transfers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiTransfer>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_transfers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ApiTransfer&gt;**](ApiTransfer.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_withdraw_fee_estimate

> <ApiFeeEstimateResult> exchange_restapi_get_withdraw_fee_estimate(opts)

Get fee estimate for crypto withdrawal

Gets the fee estimate for the crypto withdrawal to crypto address

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

api_instance = CoinbasePro::TransfersApi.new
opts = {
  currency: 'currency_example', # String | 
  crypto_address: 'crypto_address_example' # String | 
}

begin
  # Get fee estimate for crypto withdrawal
  result = api_instance.exchange_restapi_get_withdraw_fee_estimate(opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_withdraw_fee_estimate: #{e}"
end
```

#### Using the exchange_restapi_get_withdraw_fee_estimate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiFeeEstimateResult>, Integer, Hash)> exchange_restapi_get_withdraw_fee_estimate_with_http_info(opts)

```ruby
begin
  # Get fee estimate for crypto withdrawal
  data, status_code, headers = api_instance.exchange_restapi_get_withdraw_fee_estimate_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiFeeEstimateResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_get_withdraw_fee_estimate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  | [optional] |
| **crypto_address** | **String** |  | [optional] |

### Return type

[**ApiFeeEstimateResult**](ApiFeeEstimateResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_post_deposit_coinbase_account

> <ApiTransferResult> exchange_restapi_post_deposit_coinbase_account(api_post_transfer_coinbase_account_request)

Deposit from Coinbase account

Deposits funds from a www.coinbase.com wallet to the specified `profile_id`.

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

api_instance = CoinbasePro::TransfersApi.new
api_post_transfer_coinbase_account_request = CoinbasePro::ApiPostTransferCoinbaseAccountRequest.new({amount: 'amount_example', coinbase_account_id: 'coinbase_account_id_example', currency: 'currency_example'}) # ApiPostTransferCoinbaseAccountRequest | 

begin
  # Deposit from Coinbase account
  result = api_instance.exchange_restapi_post_deposit_coinbase_account(api_post_transfer_coinbase_account_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_deposit_coinbase_account: #{e}"
end
```

#### Using the exchange_restapi_post_deposit_coinbase_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTransferResult>, Integer, Hash)> exchange_restapi_post_deposit_coinbase_account_with_http_info(api_post_transfer_coinbase_account_request)

```ruby
begin
  # Deposit from Coinbase account
  data, status_code, headers = api_instance.exchange_restapi_post_deposit_coinbase_account_with_http_info(api_post_transfer_coinbase_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTransferResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_deposit_coinbase_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_transfer_coinbase_account_request** | [**ApiPostTransferCoinbaseAccountRequest**](ApiPostTransferCoinbaseAccountRequest.md) |  |  |

### Return type

[**ApiTransferResult**](ApiTransferResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_post_deposit_payment_method

> <ApiTransferResult> exchange_restapi_post_deposit_payment_method(api_post_transfer_payment_method_request)

Deposit from payment method

Deposits funds from a linked external payment method to the specified `profile_id`.

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

api_instance = CoinbasePro::TransfersApi.new
api_post_transfer_payment_method_request = CoinbasePro::ApiPostTransferPaymentMethodRequest.new({amount: 'amount_example', payment_method_id: 'payment_method_id_example', currency: 'currency_example'}) # ApiPostTransferPaymentMethodRequest | 

begin
  # Deposit from payment method
  result = api_instance.exchange_restapi_post_deposit_payment_method(api_post_transfer_payment_method_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_deposit_payment_method: #{e}"
end
```

#### Using the exchange_restapi_post_deposit_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTransferResult>, Integer, Hash)> exchange_restapi_post_deposit_payment_method_with_http_info(api_post_transfer_payment_method_request)

```ruby
begin
  # Deposit from payment method
  data, status_code, headers = api_instance.exchange_restapi_post_deposit_payment_method_with_http_info(api_post_transfer_payment_method_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTransferResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_deposit_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_transfer_payment_method_request** | [**ApiPostTransferPaymentMethodRequest**](ApiPostTransferPaymentMethodRequest.md) |  |  |

### Return type

[**ApiTransferResult**](ApiTransferResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_post_withdraw_coinbase_account

> <ApiTransferResult> exchange_restapi_post_withdraw_coinbase_account(api_post_transfer_coinbase_account_request)

Withdraw to Coinbase account

Withdraws funds from the specified `profile_id` to a www.coinbase.com wallet.

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

api_instance = CoinbasePro::TransfersApi.new
api_post_transfer_coinbase_account_request = CoinbasePro::ApiPostTransferCoinbaseAccountRequest.new({amount: 'amount_example', coinbase_account_id: 'coinbase_account_id_example', currency: 'currency_example'}) # ApiPostTransferCoinbaseAccountRequest | 

begin
  # Withdraw to Coinbase account
  result = api_instance.exchange_restapi_post_withdraw_coinbase_account(api_post_transfer_coinbase_account_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_withdraw_coinbase_account: #{e}"
end
```

#### Using the exchange_restapi_post_withdraw_coinbase_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTransferResult>, Integer, Hash)> exchange_restapi_post_withdraw_coinbase_account_with_http_info(api_post_transfer_coinbase_account_request)

```ruby
begin
  # Withdraw to Coinbase account
  data, status_code, headers = api_instance.exchange_restapi_post_withdraw_coinbase_account_with_http_info(api_post_transfer_coinbase_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTransferResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_withdraw_coinbase_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_transfer_coinbase_account_request** | [**ApiPostTransferCoinbaseAccountRequest**](ApiPostTransferCoinbaseAccountRequest.md) |  |  |

### Return type

[**ApiTransferResult**](ApiTransferResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_post_withdraw_crypto

> <ApiTransferResult> exchange_restapi_post_withdraw_crypto(api_post_transfer_crypto_request)

Withdraw to crypto address

Withdraws funds from the specified `profile_id` to an external crypto address

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

api_instance = CoinbasePro::TransfersApi.new
api_post_transfer_crypto_request = CoinbasePro::ApiPostTransferCryptoRequest.new({amount: 'amount_example', currency: 'currency_example', crypto_address: 'crypto_address_example'}) # ApiPostTransferCryptoRequest | 

begin
  # Withdraw to crypto address
  result = api_instance.exchange_restapi_post_withdraw_crypto(api_post_transfer_crypto_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_withdraw_crypto: #{e}"
end
```

#### Using the exchange_restapi_post_withdraw_crypto_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTransferResult>, Integer, Hash)> exchange_restapi_post_withdraw_crypto_with_http_info(api_post_transfer_crypto_request)

```ruby
begin
  # Withdraw to crypto address
  data, status_code, headers = api_instance.exchange_restapi_post_withdraw_crypto_with_http_info(api_post_transfer_crypto_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTransferResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_withdraw_crypto_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_transfer_crypto_request** | [**ApiPostTransferCryptoRequest**](ApiPostTransferCryptoRequest.md) |  |  |

### Return type

[**ApiTransferResult**](ApiTransferResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_post_withdraw_payment_method

> <ApiTransferResult> exchange_restapi_post_withdraw_payment_method(api_post_transfer_payment_method_request)

Withdraw to payment method

Withdraws funds from the specified `profile_id` to a linked external payment method

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

api_instance = CoinbasePro::TransfersApi.new
api_post_transfer_payment_method_request = CoinbasePro::ApiPostTransferPaymentMethodRequest.new({amount: 'amount_example', payment_method_id: 'payment_method_id_example', currency: 'currency_example'}) # ApiPostTransferPaymentMethodRequest | 

begin
  # Withdraw to payment method
  result = api_instance.exchange_restapi_post_withdraw_payment_method(api_post_transfer_payment_method_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_withdraw_payment_method: #{e}"
end
```

#### Using the exchange_restapi_post_withdraw_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTransferResult>, Integer, Hash)> exchange_restapi_post_withdraw_payment_method_with_http_info(api_post_transfer_payment_method_request)

```ruby
begin
  # Withdraw to payment method
  data, status_code, headers = api_instance.exchange_restapi_post_withdraw_payment_method_with_http_info(api_post_transfer_payment_method_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTransferResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling TransfersApi->exchange_restapi_post_withdraw_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_transfer_payment_method_request** | [**ApiPostTransferPaymentMethodRequest**](ApiPostTransferPaymentMethodRequest.md) |  |  |

### Return type

[**ApiTransferResult**](ApiTransferResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

