# CoinbasePro::ApiReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | [**ApiReportType**](ApiReportType.md) |  | [default to &#39;fills&#39;] |
| **created_at** | **Time** |  |  |
| **completed_at** | **Time** |  |  |
| **expires_at** | **Time** |  |  |
| **status** | [**ApiReportReportStatus**](ApiReportReportStatus.md) |  | [default to &#39;pending&#39;] |
| **user_id** | **String** |  |  |
| **file_url** | **String** |  |  |
| **params** | [**ApiReportParams**](ApiReportParams.md) |  |  |
| **file_count** | **String** |  | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiReport.new(
  id: null,
  type: null,
  created_at: null,
  completed_at: null,
  expires_at: null,
  status: null,
  user_id: null,
  file_url: null,
  params: null,
  file_count: null
)
```

