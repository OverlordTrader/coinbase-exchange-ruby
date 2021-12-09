# CoinbasePro::ApiCoinbaseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **balance** | **String** |  |  |
| **currency** | **String** |  |  |
| **type** | [**CoinbaseAccountCoinbaseAccountType**](CoinbaseAccountCoinbaseAccountType.md) |  | [default to &#39;wallet&#39;] |
| **primary** | **Boolean** |  |  |
| **active** | **Boolean** |  |  |
| **available_on_consumer** | **Boolean** |  |  |
| **ready** | **Boolean** |  | [optional] |
| **wire_deposit_information** | [**ApiCoinbaseAccountWireDepositInformation**](ApiCoinbaseAccountWireDepositInformation.md) |  | [optional] |
| **swift_deposit_information** | [**ApiCoinbaseAccountSwiftDepositInformation**](ApiCoinbaseAccountSwiftDepositInformation.md) |  | [optional] |
| **sepa_deposit_information** | [**ApiCoinbaseAccountSepaDepositInformation**](ApiCoinbaseAccountSepaDepositInformation.md) |  | [optional] |
| **uk_deposit_information** | [**ApiCoinbaseAccountUkDepositInformation**](ApiCoinbaseAccountUkDepositInformation.md) |  | [optional] |
| **destination_tag_name** | **String** |  | [optional] |
| **destination_tag_regex** | **String** |  | [optional] |
| **hold_balance** | **String** |  |  |
| **hold_currency** | **String** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCoinbaseAccount.new(
  id: null,
  name: null,
  balance: null,
  currency: null,
  type: null,
  primary: null,
  active: null,
  available_on_consumer: null,
  ready: null,
  wire_deposit_information: null,
  swift_deposit_information: null,
  sepa_deposit_information: null,
  uk_deposit_information: null,
  destination_tag_name: null,
  destination_tag_regex: null,
  hold_balance: null,
  hold_currency: null
)
```

