# CoinbasePro::ApiCoinbaseAccountWireDepositInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  | [optional] |
| **routing_number** | **String** |  |  |
| **bank_name** | **String** |  |  |
| **bank_address** | **String** |  |  |
| **bank_country** | [**ApiCoinbaseAccountBankCountry**](ApiCoinbaseAccountBankCountry.md) |  |  |
| **account_name** | **String** |  |  |
| **account_address** | **String** |  |  |
| **reference** | **String** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCoinbaseAccountWireDepositInformation.new(
  account_number: null,
  routing_number: null,
  bank_name: null,
  bank_address: null,
  bank_country: null,
  account_name: null,
  account_address: null,
  reference: null
)
```

