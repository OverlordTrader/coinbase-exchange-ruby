# CoinbasePro::ApiProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **base_currency** | **String** |  |  |
| **quote_currency** | **String** |  |  |
| **base_min_size** | **String** | Minmum order size |  |
| **base_max_size** | **String** | Maximum order size |  |
| **quote_increment** | **String** | Min order price (a.k.a. price increment |  |
| **base_increment** | **String** |  |  |
| **display_name** | **String** |  |  |
| **min_market_funds** | **String** |  |  |
| **max_market_funds** | **String** |  |  |
| **margin_enabled** | **Boolean** |  |  |
| **post_only** | **Boolean** |  |  |
| **limit_only** | **Boolean** |  |  |
| **cancel_only** | **Boolean** |  |  |
| **status** | [**ApiProductStatusEnum**](ApiProductStatusEnum.md) |  | [default to &#39;online&#39;] |
| **status_message** | **String** |  |  |
| **trading_disabled** | **Boolean** |  | [optional] |
| **fx_stablecoin** | **Boolean** |  | [optional] |
| **max_slippage_percentage** | **String** |  | [optional] |
| **auction_mode** | **Boolean** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiProduct.new(
  id: null,
  base_currency: null,
  quote_currency: null,
  base_min_size: null,
  base_max_size: null,
  quote_increment: null,
  base_increment: null,
  display_name: null,
  min_market_funds: null,
  max_market_funds: null,
  margin_enabled: null,
  post_only: null,
  limit_only: null,
  cancel_only: null,
  status: null,
  status_message: null,
  trading_disabled: null,
  fx_stablecoin: null,
  max_slippage_percentage: null,
  auction_mode: null
)
```

