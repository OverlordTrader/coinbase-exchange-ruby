# CoinbasePro::OrdersApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_delete_order**](OrdersApi.md#exchange_restapi_delete_order) | **DELETE** /orders/{order_id} | Cancel an order |
| [**exchange_restapi_delete_orders**](OrdersApi.md#exchange_restapi_delete_orders) | **DELETE** /orders | Cancel all orders |
| [**exchange_restapi_get_fills**](OrdersApi.md#exchange_restapi_get_fills) | **GET** /fills | Get all fills |
| [**exchange_restapi_get_order**](OrdersApi.md#exchange_restapi_get_order) | **GET** /orders/{order_id} | Get single order |
| [**exchange_restapi_get_orders**](OrdersApi.md#exchange_restapi_get_orders) | **GET** /orders | Get all orders |
| [**exchange_restapi_post_orders**](OrdersApi.md#exchange_restapi_post_orders) | **POST** /orders | Create a new order |


## exchange_restapi_delete_order

> String exchange_restapi_delete_order(order_id, opts)

Cancel an order

Cancel a single open order by `{id}`.

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

api_instance = CoinbasePro::OrdersApi.new
order_id = 'order_id_example' # String | `id` of the order to cancel
opts = {
  profile_id: 'profile_id_example' # String | Cancels orders on a specific profile
}

begin
  # Cancel an order
  result = api_instance.exchange_restapi_delete_order(order_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_delete_order: #{e}"
end
```

#### Using the exchange_restapi_delete_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> exchange_restapi_delete_order_with_http_info(order_id, opts)

```ruby
begin
  # Cancel an order
  data, status_code, headers = api_instance.exchange_restapi_delete_order_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_delete_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | &#x60;id&#x60; of the order to cancel |  |
| **profile_id** | **String** | Cancels orders on a specific profile | [optional] |

### Return type

**String**

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_delete_orders

> Array&lt;String&gt; exchange_restapi_delete_orders(opts)

Cancel all orders

With best effort, cancel all open orders. This may require you to make the request multiple times until all of the open orders are deleted.

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

api_instance = CoinbasePro::OrdersApi.new
opts = {
  profile_id: 'profile_id_example', # String | Cancels orders on a specific profile
  product_id: 'product_id_example' # String | Cancels orders on a specific product only
}

begin
  # Cancel all orders
  result = api_instance.exchange_restapi_delete_orders(opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_delete_orders: #{e}"
end
```

#### Using the exchange_restapi_delete_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> exchange_restapi_delete_orders_with_http_info(opts)

```ruby
begin
  # Cancel all orders
  data, status_code, headers = api_instance.exchange_restapi_delete_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_delete_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Cancels orders on a specific profile | [optional] |
| **product_id** | **String** | Cancels orders on a specific product only | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_fills

> <Array<ApiOrderFill>> exchange_restapi_get_fills(opts)

Get all fills

Get a list of fills. A fill is a partial or complete match on a specific order.

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

api_instance = CoinbasePro::OrdersApi.new
opts = {
  order_id: 'order_id_example', # String | limit to fills on a specific order. Either `order_id` or `product_id` is required.
  product_id: 'product_id_example', # String | limit to fills on a specific product. Either `order_id` or `product_id` is required.
  profile_id: 'profile_id_example', # String | get results for a specific profile
  limit: 789, # Integer | Limit on number of results to return.
  before: 789, # Integer | Used for pagination. Sets start cursor to `before` date.
  after: 789 # Integer | Used for pagination. Sets end cursor to `after` date.
}

begin
  # Get all fills
  result = api_instance.exchange_restapi_get_fills(opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_get_fills: #{e}"
end
```

#### Using the exchange_restapi_get_fills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiOrderFill>>, Integer, Hash)> exchange_restapi_get_fills_with_http_info(opts)

```ruby
begin
  # Get all fills
  data, status_code, headers = api_instance.exchange_restapi_get_fills_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiOrderFill>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_get_fills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | limit to fills on a specific order. Either &#x60;order_id&#x60; or &#x60;product_id&#x60; is required. | [optional] |
| **product_id** | **String** | limit to fills on a specific product. Either &#x60;order_id&#x60; or &#x60;product_id&#x60; is required. | [optional] |
| **profile_id** | **String** | get results for a specific profile | [optional][default to &#39;default&#39;] |
| **limit** | **Integer** | Limit on number of results to return. | [optional] |
| **before** | **Integer** | Used for pagination. Sets start cursor to &#x60;before&#x60; date. | [optional] |
| **after** | **Integer** | Used for pagination. Sets end cursor to &#x60;after&#x60; date. | [optional] |

### Return type

[**Array&lt;ApiOrderFill&gt;**](ApiOrderFill.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_order

> <ApiOrder> exchange_restapi_get_order(order_id)

Get single order

Get a single order by `id`.

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

api_instance = CoinbasePro::OrdersApi.new
order_id = 'order_id_example' # String | `order_id` is either the exchange assigned id or the client assigned client_oid. When using client_oid it must be preceded by the client: namespace.

begin
  # Get single order
  result = api_instance.exchange_restapi_get_order(order_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_get_order: #{e}"
end
```

#### Using the exchange_restapi_get_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiOrder>, Integer, Hash)> exchange_restapi_get_order_with_http_info(order_id)

```ruby
begin
  # Get single order
  data, status_code, headers = api_instance.exchange_restapi_get_order_with_http_info(order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiOrder>
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | &#x60;order_id&#x60; is either the exchange assigned id or the client assigned client_oid. When using client_oid it must be preceded by the client: namespace. |  |

### Return type

[**ApiOrder**](ApiOrder.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_orders

> <Array<ApiOrder>> exchange_restapi_get_orders(limit, status, opts)

Get all orders

List your current open orders. Only open or un-settled orders are returned by default. As soon as an order is no longer open and settled, it will no longer appear in the default request. Open orders may change state between the request and the response depending on market conditions.

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

api_instance = CoinbasePro::OrdersApi.new
limit = 789 # Integer | Limit on number of results to return.
status = ['open'] # Array<String> | Array with order statuses to filter by.
opts = {
  profile_id: 'profile_id_example', # String | Filter results by a specific profile_id
  product_id: 'product_id_example', # String | Filter results by a specific product_id
  sorted_by: 'created_at', # String | Sort criteria for results.
  sorting: 'desc', # String | Ascending or descending order, by `sortedBy`
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter results by minimum posted date
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter results by maximum posted date
  before: 'before_example', # String | Used for pagination. Sets start cursor to `before` date.
  after: 'after_example' # String | Used for pagination. Sets end cursor to `after` date.
}

begin
  # Get all orders
  result = api_instance.exchange_restapi_get_orders(limit, status, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_get_orders: #{e}"
end
```

#### Using the exchange_restapi_get_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiOrder>>, Integer, Hash)> exchange_restapi_get_orders_with_http_info(limit, status, opts)

```ruby
begin
  # Get all orders
  data, status_code, headers = api_instance.exchange_restapi_get_orders_with_http_info(limit, status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiOrder>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_get_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit on number of results to return. |  |
| **status** | [**Array&lt;String&gt;**](String.md) | Array with order statuses to filter by. |  |
| **profile_id** | **String** | Filter results by a specific profile_id | [optional] |
| **product_id** | **String** | Filter results by a specific product_id | [optional] |
| **sorted_by** | **String** | Sort criteria for results. | [optional][default to &#39;created_at&#39;] |
| **sorting** | **String** | Ascending or descending order, by &#x60;sortedBy&#x60; | [optional][default to &#39;desc&#39;] |
| **start_date** | **Time** | Filter results by minimum posted date | [optional] |
| **end_date** | **Time** | Filter results by maximum posted date | [optional] |
| **before** | **String** | Used for pagination. Sets start cursor to &#x60;before&#x60; date. | [optional] |
| **after** | **String** | Used for pagination. Sets end cursor to &#x60;after&#x60; date. | [optional] |

### Return type

[**Array&lt;ApiOrder&gt;**](ApiOrder.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_post_orders

> <ApiOrder> exchange_restapi_post_orders(api_post_orders_request)

Create a new order

Create an order. You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds. Once an order is placed, your account funds will be put on hold for the duration of the order. How much and which funds are put on hold depends on the order type and parameters specified.

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

api_instance = CoinbasePro::OrdersApi.new
api_post_orders_request = CoinbasePro::ApiPostOrdersRequest.new({side: CoinbasePro::ApiOrderSide::BUY, product_id: 'product_id_example'}) # ApiPostOrdersRequest | 

begin
  # Create a new order
  result = api_instance.exchange_restapi_post_orders(api_post_orders_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_post_orders: #{e}"
end
```

#### Using the exchange_restapi_post_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiOrder>, Integer, Hash)> exchange_restapi_post_orders_with_http_info(api_post_orders_request)

```ruby
begin
  # Create a new order
  data, status_code, headers = api_instance.exchange_restapi_post_orders_with_http_info(api_post_orders_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiOrder>
rescue CoinbasePro::ApiError => e
  puts "Error when calling OrdersApi->exchange_restapi_post_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_orders_request** | [**ApiPostOrdersRequest**](ApiPostOrdersRequest.md) |  |  |

### Return type

[**ApiOrder**](ApiOrder.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

