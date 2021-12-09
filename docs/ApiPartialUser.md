# CoinbasePro::ApiPartialUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **active_at** | **Time** |  | [optional] |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **roles** | **Array&lt;Object&gt;** |  | [optional] |
| **is_banned** | **Boolean** |  |  |
| **user_type** | **String** |  |  |
| **fulfills_new_requirements** | **Boolean** |  |  |
| **flags** | **Hash&lt;String, String&gt;** |  | [optional] |
| **details** | **Object** |  | [optional] |
| **preferences** | **Hash&lt;String, Object&gt;** |  |  |
| **has_default** | **Boolean** |  |  |
| **state_code** | **String** |  | [optional] |
| **cb_data_from_cache** | **Boolean** |  | [optional] |
| **two_factor_method** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **terms_accepted** | **Time** |  | [optional] |
| **has_clawback_payment_pending** | **Boolean** |  | [optional] |
| **has_restricted_assets** | **Boolean** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiPartialUser.new(
  id: null,
  created_at: null,
  active_at: null,
  name: null,
  email: null,
  roles: null,
  is_banned: null,
  user_type: null,
  fulfills_new_requirements: null,
  flags: null,
  details: null,
  preferences: null,
  has_default: null,
  state_code: null,
  cb_data_from_cache: null,
  two_factor_method: null,
  legal_name: null,
  terms_accepted: null,
  has_clawback_payment_pending: null,
  has_restricted_assets: null
)
```

