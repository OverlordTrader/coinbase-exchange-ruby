# CoinbasePro::ApiOrderFill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_id** | **Integer** | id of trade that created the fill |  |
| **product_id** | **String** | book the order was placed on |  |
| **order_id** | **String** | uuid |  |
| **user_id** | **String** | id of user&#39;s account |  |
| **profile_id** | **String** | profile_id that placed the order |  |
| **liquidity** | [**ApiOrderFillLiquidity**](ApiOrderFillLiquidity.md) |  | [default to &#39;M&#39;] |
| **price** | **String** | price per unit of base currency |  |
| **size** | **String** | amount of base currency to buy/sell |  |
| **fee** | **String** | fees paid on current filled amount |  |
| **created_at** | **String** | timestamp of fill |  |
| **side** | [**ApiOrderSide**](ApiOrderSide.md) |  | [default to &#39;buy&#39;] |
| **settled** | **Boolean** | true if funds have been exchanged and settled |  |
| **usd_volume** | **String** | true if funds have been exchanged and settled |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiOrderFill.new(
  trade_id: null,
  product_id: null,
  order_id: null,
  user_id: null,
  profile_id: null,
  liquidity: null,
  price: null,
  size: null,
  fee: null,
  created_at: null,
  side: null,
  settled: null,
  usd_volume: null
)
```

