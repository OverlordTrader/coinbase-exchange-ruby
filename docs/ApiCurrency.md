# CoinbasePro::ApiCurrency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **min_size** | **String** |  |  |
| **status** | **String** |  |  |
| **message** | **String** |  | [optional] |
| **max_precision** | **String** |  |  |
| **convertible_to** | **Array&lt;String&gt;** |  | [optional] |
| **details** | [**ApiCurrencyDetails**](ApiCurrencyDetails.md) |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCurrency.new(
  id: null,
  name: null,
  min_size: null,
  status: null,
  message: null,
  max_precision: null,
  convertible_to: null,
  details: null
)
```

