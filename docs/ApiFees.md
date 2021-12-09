# CoinbasePro::ApiFees

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taker_fee_rate** | **String** | Taker fee rate. |  |
| **maker_fee_rate** | **String** | Maker fee rate. |  |
| **usd_volume** | **String** | The 30 days trailing volume in USD. | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiFees.new(
  taker_fee_rate: 0.0050,
  maker_fee_rate: 0.0050,
  usd_volume: 43806.92
)
```

