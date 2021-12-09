# CoinbasePro::AccountsApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_account**](AccountsApi.md#exchange_restapi_get_account) | **GET** /accounts/{account_id} | Get a single account by id |
| [**exchange_restapi_get_account_holds**](AccountsApi.md#exchange_restapi_get_account_holds) | **GET** /accounts/{account_id}/holds | Get a single account&#39;s holds |
| [**exchange_restapi_get_account_ledger**](AccountsApi.md#exchange_restapi_get_account_ledger) | **GET** /accounts/{account_id}/ledger | Get a single account&#39;s ledger |
| [**exchange_restapi_get_account_transfers**](AccountsApi.md#exchange_restapi_get_account_transfers) | **GET** /accounts/{account_id}/transfers | Get a single account&#39;s transfers |
| [**exchange_restapi_get_accounts**](AccountsApi.md#exchange_restapi_get_accounts) | **GET** /accounts | Get all accounts for a profile |


## exchange_restapi_get_account

> <ApiAccount> exchange_restapi_get_account(account_id)

Get a single account by id

Information for a single account. Use this endpoint when you know the account_id. API key must belong to the same profile as the account.

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

api_instance = CoinbasePro::AccountsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get a single account by id
  result = api_instance.exchange_restapi_get_account(account_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account: #{e}"
end
```

#### Using the exchange_restapi_get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiAccount>, Integer, Hash)> exchange_restapi_get_account_with_http_info(account_id)

```ruby
begin
  # Get a single account by id
  data, status_code, headers = api_instance.exchange_restapi_get_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiAccount>
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**ApiAccount**](ApiAccount.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_account_holds

> <Array<ApiAccountHold>> exchange_restapi_get_account_holds(account_id, opts)

Get a single account's holds

List the holds of an account that belong to the same profile as the API key. Holds are placed on an account for any active orders or pending withdraw requests. As an order is filled, the hold amount is updated. If an order is canceled, any remaining hold is removed. For withdrawals, the hold is removed after it is completed.

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

api_instance = CoinbasePro::AccountsApi.new
account_id = 'account_id_example' # String | 
opts = {
  before: 'before_example', # String | Used for pagination. Sets start cursor to `before` date.
  after: 'after_example', # String | Used for pagination. Sets end cursor to `after` date.
  limit: 789 # Integer | Limit on number of results to return.
}

begin
  # Get a single account's holds
  result = api_instance.exchange_restapi_get_account_holds(account_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_holds: #{e}"
end
```

#### Using the exchange_restapi_get_account_holds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiAccountHold>>, Integer, Hash)> exchange_restapi_get_account_holds_with_http_info(account_id, opts)

```ruby
begin
  # Get a single account's holds
  data, status_code, headers = api_instance.exchange_restapi_get_account_holds_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiAccountHold>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_holds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **before** | **String** | Used for pagination. Sets start cursor to &#x60;before&#x60; date. | [optional] |
| **after** | **String** | Used for pagination. Sets end cursor to &#x60;after&#x60; date. | [optional] |
| **limit** | **Integer** | Limit on number of results to return. | [optional] |

### Return type

[**Array&lt;ApiAccountHold&gt;**](ApiAccountHold.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_account_ledger

> <Array<ApiAccountLedgerEntry>> exchange_restapi_get_account_ledger(account_id, opts)

Get a single account's ledger

Lists ledger activity for an account. This includes anything that would affect the accounts balance - transfers, trades, fees, etc.

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

api_instance = CoinbasePro::AccountsApi.new
account_id = 'account_id_example' # String | Returns list of ledger entries from this account id.
opts = {
  start_date: 'start_date_example', # String | Filter results by minimum posted date.
  end_date: 'end_date_example', # String | Filter results by maximum posted date.
  before: 'before_example', # String | Used for pagination. Sets start cursor to `before` date.
  after: 'after_example', # String | Used for pagination. Sets end cursor to `after` date.
  limit: 789, # Integer | Limit on number of results to return.
  profile_id: 'profile_id_example' # String | 
}

begin
  # Get a single account's ledger
  result = api_instance.exchange_restapi_get_account_ledger(account_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_ledger: #{e}"
end
```

#### Using the exchange_restapi_get_account_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiAccountLedgerEntry>>, Integer, Hash)> exchange_restapi_get_account_ledger_with_http_info(account_id, opts)

```ruby
begin
  # Get a single account's ledger
  data, status_code, headers = api_instance.exchange_restapi_get_account_ledger_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiAccountLedgerEntry>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_ledger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Returns list of ledger entries from this account id. |  |
| **start_date** | **String** | Filter results by minimum posted date. | [optional] |
| **end_date** | **String** | Filter results by maximum posted date. | [optional] |
| **before** | **String** | Used for pagination. Sets start cursor to &#x60;before&#x60; date. | [optional] |
| **after** | **String** | Used for pagination. Sets end cursor to &#x60;after&#x60; date. | [optional] |
| **limit** | **Integer** | Limit on number of results to return. | [optional] |
| **profile_id** | **String** |  | [optional] |

### Return type

[**Array&lt;ApiAccountLedgerEntry&gt;**](ApiAccountLedgerEntry.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_account_transfers

> <Array<ApiTransfer>> exchange_restapi_get_account_transfers(account_id, opts)

Get a single account's transfers

Lists past withdrawals and deposits for an account.

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

api_instance = CoinbasePro::AccountsApi.new
account_id = 'account_id_example' # String | Returns list of transfers from this account id.
opts = {
  before: 'before_example', # String | Used for pagination. Sets start cursor to `before` date.
  after: 'after_example', # String | Used for pagination. Sets end cursor to `after` date.
  limit: 789, # Integer | Limit on number of results to return.
  type: 'type_example' # String | 
}

begin
  # Get a single account's transfers
  result = api_instance.exchange_restapi_get_account_transfers(account_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_transfers: #{e}"
end
```

#### Using the exchange_restapi_get_account_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiTransfer>>, Integer, Hash)> exchange_restapi_get_account_transfers_with_http_info(account_id, opts)

```ruby
begin
  # Get a single account's transfers
  data, status_code, headers = api_instance.exchange_restapi_get_account_transfers_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiTransfer>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_account_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Returns list of transfers from this account id. |  |
| **before** | **String** | Used for pagination. Sets start cursor to &#x60;before&#x60; date. | [optional] |
| **after** | **String** | Used for pagination. Sets end cursor to &#x60;after&#x60; date. | [optional] |
| **limit** | **Integer** | Limit on number of results to return. | [optional] |
| **type** | **String** |  | [optional] |

### Return type

[**Array&lt;ApiTransfer&gt;**](ApiTransfer.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_accounts

> <Array<ApiAccount>> exchange_restapi_get_accounts

Get all accounts for a profile

Get a list of trading accounts from the profile of the API key.

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

api_instance = CoinbasePro::AccountsApi.new

begin
  # Get all accounts for a profile
  result = api_instance.exchange_restapi_get_accounts
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_accounts: #{e}"
end
```

#### Using the exchange_restapi_get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiAccount>>, Integer, Hash)> exchange_restapi_get_accounts_with_http_info

```ruby
begin
  # Get all accounts for a profile
  data, status_code, headers = api_instance.exchange_restapi_get_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiAccount>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling AccountsApi->exchange_restapi_get_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ApiAccount&gt;**](ApiAccount.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

