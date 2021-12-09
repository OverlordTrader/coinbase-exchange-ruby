# CoinbasePro::ApiProductBook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bids** | **Array&lt;Object&gt;** |  |  |
| **asks** | **Array&lt;Object&gt;** |  |  |
| **sequence** | **Float** |  |  |
| **auction_mode** | **Boolean** |  | [optional] |
| **auction** | [**ApiAuctionBook**](ApiAuctionBook.md) |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiProductBook.new(
  bids: null,
  asks: null,
  sequence: null,
  auction_mode: null,
  auction: null
)
```

