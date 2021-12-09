# CoinbasePro::ApiReportParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |
| **format** | [**ApiReportFormat**](ApiReportFormat.md) |  | [default to &#39;pdf&#39;] |
| **product_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **profile_id** | **String** |  |  |
| **email** | **String** |  |  |
| **user** | [**ApiPartialUser**](ApiPartialUser.md) |  |  |
| **new_york_state** | **Boolean** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiReportParams.new(
  start_date: null,
  end_date: null,
  format: null,
  product_id: null,
  account_id: null,
  profile_id: null,
  email: null,
  user: null,
  new_york_state: null
)
```

