# CoinbasePro::ProductsApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_product**](ProductsApi.md#exchange_restapi_get_product) | **GET** /products/{product_id} | Get single product |
| [**exchange_restapi_get_product_book**](ProductsApi.md#exchange_restapi_get_product_book) | **GET** /products/{product_id}/book | Get product book |
| [**exchange_restapi_get_product_candles**](ProductsApi.md#exchange_restapi_get_product_candles) | **GET** /products/{product_id}/candles | Get product candles |
| [**exchange_restapi_get_product_stats**](ProductsApi.md#exchange_restapi_get_product_stats) | **GET** /products/{product_id}/stats | Get product stats |
| [**exchange_restapi_get_product_ticker**](ProductsApi.md#exchange_restapi_get_product_ticker) | **GET** /products/{product_id}/ticker | Get product ticker |
| [**exchange_restapi_get_product_trades**](ProductsApi.md#exchange_restapi_get_product_trades) | **GET** /products/{product_id}/trades | Get product trades |
| [**exchange_restapi_get_products**](ProductsApi.md#exchange_restapi_get_products) | **GET** /products | Get all known trading pairs |


## exchange_restapi_get_product

> <ApiProduct> exchange_restapi_get_product(product_id)

Get single product

Get information on a single product.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
product_id = 'product_id_example' # String | 

begin
  # Get single product
  result = api_instance.exchange_restapi_get_product(product_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product: #{e}"
end
```

#### Using the exchange_restapi_get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProduct>, Integer, Hash)> exchange_restapi_get_product_with_http_info(product_id)

```ruby
begin
  # Get single product
  data, status_code, headers = api_instance.exchange_restapi_get_product_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProduct>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ApiProduct**](ApiProduct.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_product_book

> <ApiProductBook> exchange_restapi_get_product_book(product_id, opts)

Get product book

Get a list of open orders for a product. The amount of detail shown can be customized with the `level` parameter.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
product_id = 'product_id_example' # String | 
opts = {
  level: 56 # Integer | 
}

begin
  # Get product book
  result = api_instance.exchange_restapi_get_product_book(product_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_book: #{e}"
end
```

#### Using the exchange_restapi_get_product_book_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductBook>, Integer, Hash)> exchange_restapi_get_product_book_with_http_info(product_id, opts)

```ruby
begin
  # Get product book
  data, status_code, headers = api_instance.exchange_restapi_get_product_book_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductBook>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_book_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **level** | **Integer** |  | [optional] |

### Return type

[**ApiProductBook**](ApiProductBook.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_product_candles

> Array&lt;Object&gt; exchange_restapi_get_product_candles(product_id, opts)

Get product candles

Historic rates for a product. Rates are returned in grouped buckets. Candle schema is of the form `[timestamp, price_low, price_high, price_open, price_close]`

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
product_id = 'product_id_example' # String | 
opts = {
  granularity: 56, # Integer | 
  start: 'start_example', # String | Timestamp for starting range of aggregations
  _end: '_end_example' # String | Timestamp for ending range of aggregations
}

begin
  # Get product candles
  result = api_instance.exchange_restapi_get_product_candles(product_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_candles: #{e}"
end
```

#### Using the exchange_restapi_get_product_candles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> exchange_restapi_get_product_candles_with_http_info(product_id, opts)

```ruby
begin
  # Get product candles
  data, status_code, headers = api_instance.exchange_restapi_get_product_candles_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_candles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **granularity** | **Integer** |  | [optional] |
| **start** | **String** | Timestamp for starting range of aggregations | [optional] |
| **_end** | **String** | Timestamp for ending range of aggregations | [optional] |

### Return type

**Array&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_product_stats

> <ApiProductStats24Hour> exchange_restapi_get_product_stats(product_id)

Get product stats

Gets 30day and 24hour stats for a product.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
product_id = 'product_id_example' # String | 

begin
  # Get product stats
  result = api_instance.exchange_restapi_get_product_stats(product_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_stats: #{e}"
end
```

#### Using the exchange_restapi_get_product_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductStats24Hour>, Integer, Hash)> exchange_restapi_get_product_stats_with_http_info(product_id)

```ruby
begin
  # Get product stats
  data, status_code, headers = api_instance.exchange_restapi_get_product_stats_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductStats24Hour>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ApiProductStats24Hour**](ApiProductStats24Hour.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_product_ticker

> <ApiProductTicker> exchange_restapi_get_product_ticker(product_id)

Get product ticker

Gets snapshot information about the last trade (tick), best bid/ask and 24h volume.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
product_id = 'product_id_example' # String | 

begin
  # Get product ticker
  result = api_instance.exchange_restapi_get_product_ticker(product_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_ticker: #{e}"
end
```

#### Using the exchange_restapi_get_product_ticker_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiProductTicker>, Integer, Hash)> exchange_restapi_get_product_ticker_with_http_info(product_id)

```ruby
begin
  # Get product ticker
  data, status_code, headers = api_instance.exchange_restapi_get_product_ticker_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiProductTicker>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_ticker_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |

### Return type

[**ApiProductTicker**](ApiProductTicker.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_product_trades

> <Array<ApiProductTrade>> exchange_restapi_get_product_trades(product_id, opts)

Get product trades

Gets a list the latest trades for a product.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
product_id = 'product_id_example' # String | 
opts = {
  limit: 56, # Integer | 
  before: 56, # Integer | 
  after: 56 # Integer | 
}

begin
  # Get product trades
  result = api_instance.exchange_restapi_get_product_trades(product_id, opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_trades: #{e}"
end
```

#### Using the exchange_restapi_get_product_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiProductTrade>>, Integer, Hash)> exchange_restapi_get_product_trades_with_http_info(product_id, opts)

```ruby
begin
  # Get product trades
  data, status_code, headers = api_instance.exchange_restapi_get_product_trades_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiProductTrade>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_product_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **before** | **Integer** |  | [optional] |
| **after** | **Integer** |  | [optional] |

### Return type

[**Array&lt;ApiProductTrade&gt;**](ApiProductTrade.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_products

> <Array<ApiProduct>> exchange_restapi_get_products(opts)

Get all known trading pairs

Gets a list of available currency pairs for trading.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'

api_instance = CoinbasePro::ProductsApi.new
opts = {
  type: 'type_example' # String | 
}

begin
  # Get all known trading pairs
  result = api_instance.exchange_restapi_get_products(opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_products: #{e}"
end
```

#### Using the exchange_restapi_get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiProduct>>, Integer, Hash)> exchange_restapi_get_products_with_http_info(opts)

```ruby
begin
  # Get all known trading pairs
  data, status_code, headers = api_instance.exchange_restapi_get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiProduct>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ProductsApi->exchange_restapi_get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |

### Return type

[**Array&lt;ApiProduct&gt;**](ApiProduct.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

