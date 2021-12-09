# CoinbasePro::ApiAccountLedgerEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **amount** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **balance** | **String** |  |  |
| **type** | [**AccountLedgerEntryAccountLedgerType**](AccountLedgerEntryAccountLedgerType.md) |  | [default to &#39;transfer&#39;] |
| **details** | **Hash&lt;String, String&gt;** |  |  |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiAccountLedgerEntry.new(
  id: null,
  amount: null,
  created_at: null,
  balance: null,
  type: null,
  details: null
)
```

