# CoinbasePro::ApiPostOrdersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | create order on a specific &#x60;profile_id&#x60;. If none is passed, defaults to &#x60;default&#x60; profile. | [optional][default to &#39;default profile_id&#39;] |
| **type** | [**ApiOrderType**](ApiOrderType.md) |  | [optional][default to &#39;limit&#39;] |
| **side** | [**ApiOrderSide**](ApiOrderSide.md) |  | [default to &#39;buy&#39;] |
| **product_id** | **String** | Book on which to place an order |  |
| **stp** | [**ApiOrderStpFlag**](ApiOrderStpFlag.md) |  | [optional][default to &#39;dc&#39;] |
| **stop** | [**ApiOrderStop**](ApiOrderStop.md) |  | [optional][default to &#39;loss&#39;] |
| **stop_price** | **String** | Price threshold at which a &#x60;stop&#x60; order will be placed on the book | [optional] |
| **price** | **String** | Price per unit of cryptocurrency - required for &#x60;limit&#x60;/&#x60;stop&#x60; orders | [optional] |
| **size** | **String** | Amount of base currency to buy or sell - required for &#x60;limit&#x60;/&#x60;stop&#x60; orders and &#x60;market&#x60; &#x60;sell&#x60;s | [optional] |
| **funds** | **String** | Amount of quote currency to buy - required for &#x60;market&#x60; &#x60;buy&#x60;s | [optional] |
| **time_in_force** | [**ApiOrderTimeInForce**](ApiOrderTimeInForce.md) |  | [optional][default to &#39;GTC&#39;] |
| **cancel_after** | [**ApiOrderCancelAfter**](ApiOrderCancelAfter.md) |  | [optional][default to &#39;min&#39;] |
| **post_only** | **Boolean** | If true, order will only execute as a &#x60;maker&#x60; order | [optional][default to false] |
| **client_oid** | **String** | Optional Order ID selected by the user or the frontend client to identify their order | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiPostOrdersRequest.new(
  profile_id: null,
  type: null,
  side: null,
  product_id: null,
  stp: null,
  stop: null,
  stop_price: null,
  price: null,
  size: null,
  funds: null,
  time_in_force: null,
  cancel_after: null,
  post_only: null,
  client_oid: null
)
```

