# CoinbasePro::ApiReportCreateResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | [**ApiReportType**](ApiReportType.md) |  | [default to &#39;fills&#39;] |
| **status** | [**ApiReportCreateResultReportStatus**](ApiReportCreateResultReportStatus.md) |  | [default to &#39;pending&#39;] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiReportCreateResult.new(
  id: null,
  type: null,
  status: null
)
```

