# CoinbasePro::ApiAuctionBook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **open_price** | **String** |  |  |
| **open_size** | **String** |  |  |
| **best_bid_price** | **String** |  |  |
| **best_bid_size** | **String** |  |  |
| **best_ask_price** | **String** |  |  |
| **best_ask_size** | **String** |  |  |
| **auction_state** | **String** |  |  |
| **can_open** | **String** |  | [optional] |
| **time** | **Time** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiAuctionBook.new(
  open_price: null,
  open_size: null,
  best_bid_price: null,
  best_bid_size: null,
  best_ask_price: null,
  best_ask_size: null,
  auction_state: null,
  can_open: null,
  time: null
)
```

