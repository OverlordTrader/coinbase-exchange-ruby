# CoinbasePro::ApiCoinbasePriceOracle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **String** | indicates when the latest datapoint was obtained | [optional] |
| **messages** | **Array&lt;String&gt;** | array contains abi-encoded values [&#x60;&#x60;kind&#x60;&#x60;, &#x60;&#x60;timestamp&#x60;&#x60;, &#x60;&#x60;key&#x60;&#x60;, &#x60;&#x60;value&#x60;&#x60;], where &#x60;&#x60;kind&#x60;&#x60; always equals to &#39;prices&#39;, &#x60;&#x60;timestamp&#x60;&#x60; is the time when the price was obtained, &#x60;&#x60;key&#x60;&#x60; is asset ticker (e.g. &#39;eth&#39;) and &#x60;&#x60;value&#x60;&#x60; is asset price | [optional] |
| **signatures** | **Array&lt;String&gt;** | array of Ethereum-compatible ECDSA signatures for each message | [optional] |
| **prices** | **Hash&lt;String, String&gt;** | contains human-readable asset prices | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiCoinbasePriceOracle.new(
  timestamp: null,
  messages: null,
  signatures: null,
  prices: null
)
```

