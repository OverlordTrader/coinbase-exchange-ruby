# CoinbasePro::ProfilesApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_profile**](ProfilesApi.md#exchange_restapi_get_profile) | **GET** /profiles/{profile_id} | Get profile by id |
| [**exchange_restapi_get_profiles**](ProfilesApi.md#exchange_restapi_get_profiles) | **GET** /profiles | Get profiles |
| [**exchange_restapi_post_profile**](ProfilesApi.md#exchange_restapi_post_profile) | **POST** /profiles | Create a profile |
| [**exchange_restapi_post_profile_transfer**](ProfilesApi.md#exchange_restapi_post_profile_transfer) | **POST** /profiles/transfer | Transfer funds between profiles |
| [**exchange_restapi_put_profile**](ProfilesApi.md#exchange_restapi_put_profile) | **PUT** /profiles/{profile_id} | Rename a profile |
| [**exchange_restapi_put_profile_deactivate**](ProfilesApi.md#exchange_restapi_put_profile_deactivate) | **PUT** /profiles/{profile_id}/deactivate | Delete a profile |


## exchange_restapi_get_profile

> <ApiProfile> exchange_restapi_get_profile(profile_id, opts)

Get profile by id

Information for a single profile. Use this endpoint when you know the profile_id.

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

api_instance = CoinbasePro::ProfilesApi.new
profile_id = 'profile_id_example' # String | 
opts = {
  active: true # Boolean | 
}

begin
  # Get profile by id
  result = api_instance.exchange_restapi_get_profile(profile_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_get_profile: #{e}"
end
```

#### Using the exchange_restapi_get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProfile>, Integer, Hash)> exchange_restapi_get_profile_with_http_info(profile_id, opts)

```ruby
begin
  # Get profile by id
  data, status_code, headers = api_instance.exchange_restapi_get_profile_with_http_info(profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProfile>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_get_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **active** | **Boolean** |  | [optional] |

### Return type

[**ApiProfile**](ApiProfile.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_profiles

> <Array<ApiProfile>> exchange_restapi_get_profiles(opts)

Get profiles

Gets a list of all of the current user's profiles.

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

api_instance = CoinbasePro::ProfilesApi.new
opts = {
  active: true # Boolean | 
}

begin
  # Get profiles
  result = api_instance.exchange_restapi_get_profiles(opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_get_profiles: #{e}"
end
```

#### Using the exchange_restapi_get_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiProfile>>, Integer, Hash)> exchange_restapi_get_profiles_with_http_info(opts)

```ruby
begin
  # Get profiles
  data, status_code, headers = api_instance.exchange_restapi_get_profiles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiProfile>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_get_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |

### Return type

[**Array&lt;ApiProfile&gt;**](ApiProfile.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_post_profile

> <ApiProfile> exchange_restapi_post_profile(api_post_profile_request)

Create a profile

Create a new profile. Will fail if no name is provided or if user already has 10 profiles.

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

api_instance = CoinbasePro::ProfilesApi.new
api_post_profile_request = CoinbasePro::ApiPostProfileRequest.new # ApiPostProfileRequest | 

begin
  # Create a profile
  result = api_instance.exchange_restapi_post_profile(api_post_profile_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_post_profile: #{e}"
end
```

#### Using the exchange_restapi_post_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProfile>, Integer, Hash)> exchange_restapi_post_profile_with_http_info(api_post_profile_request)

```ruby
begin
  # Create a profile
  data, status_code, headers = api_instance.exchange_restapi_post_profile_with_http_info(api_post_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProfile>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_post_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_profile_request** | [**ApiPostProfileRequest**](ApiPostProfileRequest.md) |  |  |

### Return type

[**ApiProfile**](ApiProfile.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_post_profile_transfer

> <AnyType> exchange_restapi_post_profile_transfer(api_post_profile_transfer_request)

Transfer funds between profiles

Transfer an amount of currency from one profile to another.

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

api_instance = CoinbasePro::ProfilesApi.new
api_post_profile_transfer_request = CoinbasePro::ApiPostProfileTransferRequest.new({from: 'from_example', to: 'to_example', currency: 'currency_example', amount: 'amount_example'}) # ApiPostProfileTransferRequest | 

begin
  # Transfer funds between profiles
  result = api_instance.exchange_restapi_post_profile_transfer(api_post_profile_transfer_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_post_profile_transfer: #{e}"
end
```

#### Using the exchange_restapi_post_profile_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyType>, Integer, Hash)> exchange_restapi_post_profile_transfer_with_http_info(api_post_profile_transfer_request)

```ruby
begin
  # Transfer funds between profiles
  data, status_code, headers = api_instance.exchange_restapi_post_profile_transfer_with_http_info(api_post_profile_transfer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyType>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_post_profile_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_profile_transfer_request** | [**ApiPostProfileTransferRequest**](ApiPostProfileTransferRequest.md) |  |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_put_profile

> <ApiProfile> exchange_restapi_put_profile(profile_id, api_put_profile_request)

Rename a profile

Rename a profile. Names 'default' and 'margin' are reserved.

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

api_instance = CoinbasePro::ProfilesApi.new
profile_id = 'profile_id_example' # String | 
api_put_profile_request = CoinbasePro::ApiPutProfileRequest.new({profile_id: 'profile_id_example', name: 'name_example'}) # ApiPutProfileRequest | 

begin
  # Rename a profile
  result = api_instance.exchange_restapi_put_profile(profile_id, api_put_profile_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_put_profile: #{e}"
end
```

#### Using the exchange_restapi_put_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProfile>, Integer, Hash)> exchange_restapi_put_profile_with_http_info(profile_id, api_put_profile_request)

```ruby
begin
  # Rename a profile
  data, status_code, headers = api_instance.exchange_restapi_put_profile_with_http_info(profile_id, api_put_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProfile>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_put_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **api_put_profile_request** | [**ApiPutProfileRequest**](ApiPutProfileRequest.md) |  |  |

### Return type

[**ApiProfile**](ApiProfile.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## exchange_restapi_put_profile_deactivate

> <AnyType> exchange_restapi_put_profile_deactivate(profile_id, api_put_profile_deactivate_request)

Delete a profile

Deletes the profile specified by `profile_id` and transfers all funds to the profile specified by `to`. Fails if there are any open orders on the profile to be deleted.

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

api_instance = CoinbasePro::ProfilesApi.new
profile_id = 'profile_id_example' # String | 
api_put_profile_deactivate_request = CoinbasePro::ApiPutProfileDeactivateRequest.new({profile_id: 'profile_id_example', to: 'to_example'}) # ApiPutProfileDeactivateRequest | 

begin
  # Delete a profile
  result = api_instance.exchange_restapi_put_profile_deactivate(profile_id, api_put_profile_deactivate_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_put_profile_deactivate: #{e}"
end
```

#### Using the exchange_restapi_put_profile_deactivate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnyType>, Integer, Hash)> exchange_restapi_put_profile_deactivate_with_http_info(profile_id, api_put_profile_deactivate_request)

```ruby
begin
  # Delete a profile
  data, status_code, headers = api_instance.exchange_restapi_put_profile_deactivate_with_http_info(profile_id, api_put_profile_deactivate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnyType>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProfilesApi->exchange_restapi_put_profile_deactivate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **api_put_profile_deactivate_request** | [**ApiPutProfileDeactivateRequest**](ApiPutProfileDeactivateRequest.md) |  |  |

### Return type

[**AnyType**](AnyType.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

