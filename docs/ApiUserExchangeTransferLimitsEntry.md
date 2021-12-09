# CoinbasePro::ApiUserExchangeTransferLimitsEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buy** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **sell** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **exchange_withdraw** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  |  |
| **ach** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **ach_no_balance** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **credit_debit_card** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **secure3d_buy** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **paypal_buy** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **paypal_withdrawal** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **ideal_deposit** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **sofort_deposit** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |
| **instant_ach_withdrawal** | [**Hash&lt;String, ApiUserExchangeTransferLimitsForCurrency&gt;**](ApiUserExchangeTransferLimitsForCurrency.md) |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiUserExchangeTransferLimitsEntry.new(
  buy: null,
  sell: null,
  exchange_withdraw: null,
  ach: null,
  ach_no_balance: null,
  credit_debit_card: null,
  secure3d_buy: null,
  paypal_buy: null,
  paypal_withdrawal: null,
  ideal_deposit: null,
  sofort_deposit: null,
  instant_ach_withdrawal: null
)
```

