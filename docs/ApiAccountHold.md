# CoinbasePro::ApiAccountHold

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **type** | [**AccountHoldAccountHoldType**](AccountHoldAccountHoldType.md) |  | [default to &#39;order&#39;] |
| **ref** | **String** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiAccountHold.new(
  id: null,
  created_at: null,
  updated_at: null,
  type: null,
  ref: null
)
```

