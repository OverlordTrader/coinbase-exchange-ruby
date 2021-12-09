# CoinbasePro::ApiProductTrade

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_id** | **Integer** |  |  |
| **side** | [**ApiOrderSide**](ApiOrderSide.md) |  | [default to &#39;buy&#39;] |
| **size** | **String** |  |  |
| **price** | **String** |  |  |
| **time** | **Time** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiProductTrade.new(
  trade_id: null,
  side: null,
  size: null,
  price: null,
  time: null
)
```

