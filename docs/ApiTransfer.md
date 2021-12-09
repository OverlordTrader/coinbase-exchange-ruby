# CoinbasePro::ApiTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | [**ApiTransferType**](ApiTransferType.md) |  | [default to &#39;deposit&#39;] |
| **created_at** | **Time** |  |  |
| **completed_at** | **Time** |  |  |
| **canceled_at** | **Time** |  |  |
| **processed_at** | **Time** |  |  |
| **amount** | **String** |  |  |
| **details** | **Hash&lt;String, String&gt;** |  |  |
| **user_nonce** | **String** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiTransfer.new(
  id: null,
  type: null,
  created_at: null,
  completed_at: null,
  canceled_at: null,
  processed_at: null,
  amount: null,
  details: null,
  user_nonce: null
)
```

