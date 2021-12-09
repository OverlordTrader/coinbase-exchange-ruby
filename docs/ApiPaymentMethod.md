# CoinbasePro::ApiPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **name** | **String** |  |  |
| **currency** | **String** |  |  |
| **primary_buy** | **Boolean** |  |  |
| **primary_sell** | **Boolean** |  |  |
| **instant_buy** | **Boolean** |  |  |
| **instant_sell** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **resource** | **String** |  |  |
| **resource_path** | **String** |  |  |
| **verified** | **Boolean** |  | [optional] |
| **limits** | [**ApiPaymentMethodLimits**](ApiPaymentMethodLimits.md) |  | [optional] |
| **allow_buy** | **Boolean** |  | [optional] |
| **allow_sell** | **Boolean** |  | [optional] |
| **allow_deposit** | **Boolean** |  | [optional] |
| **allow_withdraw** | **Boolean** |  | [optional] |
| **fiat_account** | [**ApiMonorailLinkedResource**](ApiMonorailLinkedResource.md) |  | [optional] |
| **crypto_account** | [**ApiMonorailLinkedResource**](ApiMonorailLinkedResource.md) |  | [optional] |
| **recurring_options** | [**Array&lt;ApiPaymentMethodRecurringOption&gt;**](ApiPaymentMethodRecurringOption.md) |  | [optional] |
| **available_balance** | [**ApiPaymentMethodAvailableBalance**](ApiPaymentMethodAvailableBalance.md) |  | [optional] |
| **picker_data** | [**ApiPaymentMethodPickerData**](ApiPaymentMethodPickerData.md) |  | [optional] |
| **hold_business_days** | **Integer** |  | [optional] |
| **hold_days** | **Integer** |  | [optional] |
| **verification_method** | **String** |  | [optional] |
| **cdv_status** | **String** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiPaymentMethod.new(
  id: null,
  type: null,
  name: null,
  currency: null,
  primary_buy: null,
  primary_sell: null,
  instant_buy: null,
  instant_sell: null,
  created_at: null,
  updated_at: null,
  resource: null,
  resource_path: null,
  verified: null,
  limits: null,
  allow_buy: null,
  allow_sell: null,
  allow_deposit: null,
  allow_withdraw: null,
  fiat_account: null,
  crypto_account: null,
  recurring_options: null,
  available_balance: null,
  picker_data: null,
  hold_business_days: null,
  hold_days: null,
  verification_method: null,
  cdv_status: null
)
```

