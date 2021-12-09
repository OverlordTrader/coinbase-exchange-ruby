# CoinbasePro::ApiCoinbaseAccountGeneratedDepositAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **address** | **String** |  |  |
| **address_info** | [**ApiCoinbaseAccountAddressInfo**](ApiCoinbaseAccountAddressInfo.md) |  |  |
| **name** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **network** | **String** |  |  |
| **uri_scheme** | **String** |  |  |
| **resource** | **String** |  |  |
| **resource_path** | **String** |  |  |
| **warnings** | [**Array&lt;ApiCoinbaseAccountAddressWarning&gt;**](ApiCoinbaseAccountAddressWarning.md) |  |  |
| **legacy_address** | **String** |  | [optional] |
| **destination_tag** | **String** |  | [optional] |
| **deposit_uri** | **String** |  | [optional] |
| **callback_url** | **String** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCoinbaseAccountGeneratedDepositAddress.new(
  id: null,
  address: null,
  address_info: null,
  name: null,
  created_at: null,
  updated_at: null,
  network: null,
  uri_scheme: null,
  resource: null,
  resource_path: null,
  warnings: null,
  legacy_address: null,
  destination_tag: null,
  deposit_uri: null,
  callback_url: null
)
```

