# CoinbasePro::ApiPaymentMethodPickerData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** |  | [optional] |
| **customer_name** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **account_number** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **institution_code** | **String** |  | [optional] |
| **institution_name** | **String** |  | [optional] |
| **iban** | **String** |  | [optional] |
| **swift** | **String** |  | [optional] |
| **paypal_email** | **String** |  | [optional] |
| **paypal_owner** | **String** |  | [optional] |
| **routing_number** | **String** |  | [optional] |
| **institution_identifier** | **String** |  | [optional] |
| **bank_name** | **String** |  | [optional] |
| **branch_name** | **String** |  | [optional] |
| **icon_url** | **String** |  | [optional] |
| **balance** | [**ApiMonorailCurrencyAmount**](ApiMonorailCurrencyAmount.md) |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiPaymentMethodPickerData.new(
  symbol: null,
  customer_name: null,
  account_name: null,
  account_number: null,
  account_type: null,
  institution_code: null,
  institution_name: null,
  iban: null,
  swift: null,
  paypal_email: null,
  paypal_owner: null,
  routing_number: null,
  institution_identifier: null,
  bank_name: null,
  branch_name: null,
  icon_url: null,
  balance: null
)
```

