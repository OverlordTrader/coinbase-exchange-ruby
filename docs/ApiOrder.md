# CoinbasePro::ApiOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | uuid |  |
| **price** | **String** | price per unit of base currency | [optional] |
| **size** | **String** | amount of base currency to buy/sell | [optional] |
| **product_id** | **String** | book the order was placed on |  |
| **profile_id** | **String** | profile_id that placed the order | [optional] |
| **side** | [**ApiOrderSide**](ApiOrderSide.md) |  | [default to &#39;buy&#39;] |
| **funds** | **String** | amount of quote currency to spend (for market orders) | [optional] |
| **specified_funds** | **String** | funds with fees | [optional] |
| **type** | [**ApiOrderType**](ApiOrderType.md) |  | [default to &#39;limit&#39;] |
| **time_in_force** | [**ApiOrderTimeInForce**](ApiOrderTimeInForce.md) |  | [optional][default to &#39;GTC&#39;] |
| **expire_time** | **Time** | timestamp at which order expires | [optional] |
| **post_only** | **Boolean** | if true, forces order to be &#x60;maker&#x60; only |  |
| **created_at** | **Time** | timestamp at which order was placed |  |
| **done_at** | **Time** | timestamp at which order was done | [optional] |
| **done_reason** | **String** | reason order was done (filled, rejected, or otherwise) | [optional] |
| **reject_reason** | **String** | reason order was rejected by engine | [optional] |
| **fill_fees** | **String** | fees paid on current filled amount |  |
| **filled_size** | **String** | amount (in base currency) of the order that has been filled |  |
| **executed_value** | **String** |  | [optional] |
| **status** | [**ApiOrderStatus**](ApiOrderStatus.md) |  | [default to &#39;open&#39;] |
| **settled** | **Boolean** | true if funds have been exchanged and settled |  |
| **stop** | [**ApiOrderStop**](ApiOrderStop.md) |  | [optional][default to &#39;loss&#39;] |
| **stop_price** | **String** | price (in quote currency) at which to execute the order | [optional] |
| **funding_amount** | **String** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiOrder.new(
  id: null,
  price: null,
  size: null,
  product_id: null,
  profile_id: null,
  side: null,
  funds: null,
  specified_funds: null,
  type: null,
  time_in_force: null,
  expire_time: null,
  post_only: null,
  created_at: null,
  done_at: null,
  done_reason: null,
  reject_reason: null,
  fill_fees: null,
  filled_size: null,
  executed_value: null,
  status: null,
  settled: null,
  stop: null,
  stop_price: null,
  funding_amount: null
)
```

