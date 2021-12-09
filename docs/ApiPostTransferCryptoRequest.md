# CoinbasePro::ApiPostTransferCryptoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  | [optional] |
| **amount** | **String** |  |  |
| **currency** | **String** |  |  |
| **crypto_address** | **String** |  |  |
| **destination_tag** | **String** |  | [optional] |
| **no_destination_tag** | **Boolean** |  | [optional] |
| **two_factor_code** | **String** |  | [optional] |
| **nonce** | **Integer** |  | [optional] |
| **fee** | **String** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiPostTransferCryptoRequest.new(
  profile_id: null,
  amount: null,
  currency: null,
  crypto_address: null,
  destination_tag: null,
  no_destination_tag: null,
  two_factor_code: null,
  nonce: null,
  fee: null
)
```

