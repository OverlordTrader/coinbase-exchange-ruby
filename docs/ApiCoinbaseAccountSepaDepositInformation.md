# CoinbasePro::ApiCoinbaseAccountSepaDepositInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iban** | **String** |  |  |
| **swift** | **String** |  |  |
| **bank_name** | **String** |  |  |
| **bank_address** | **String** |  |  |
| **bank_country** | [**ApiCoinbaseAccountBankCountry**](ApiCoinbaseAccountBankCountry.md) |  |  |
| **account_name** | **String** |  |  |
| **account_address** | **String** |  |  |
| **reference** | **String** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCoinbaseAccountSepaDepositInformation.new(
  iban: null,
  swift: null,
  bank_name: null,
  bank_address: null,
  bank_country: null,
  account_name: null,
  account_address: null,
  reference: null
)
```

