# CoinbasePro::ApiCurrencyDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ApiCurrencyType**](ApiCurrencyType.md) |  | [optional][default to &#39;crypto&#39;] |
| **symbol** | **String** |  | [optional] |
| **network_confirmations** | **Integer** |  | [optional] |
| **sort_order** | **Integer** |  | [optional] |
| **crypto_address_link** | **String** |  | [optional] |
| **crypto_transaction_link** | **String** |  | [optional] |
| **push_payment_methods** | **Array&lt;String&gt;** |  | [optional] |
| **group_types** | **Array&lt;String&gt;** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **processing_time_seconds** | **Float** |  | [optional] |
| **min_withdrawal_amount** | **Float** |  | [optional] |
| **max_withdrawal_amount** | **Float** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCurrencyDetails.new(
  type: null,
  symbol: null,
  network_confirmations: null,
  sort_order: null,
  crypto_address_link: null,
  crypto_transaction_link: null,
  push_payment_methods: null,
  group_types: null,
  display_name: null,
  processing_time_seconds: null,
  min_withdrawal_amount: null,
  max_withdrawal_amount: null
)
```

