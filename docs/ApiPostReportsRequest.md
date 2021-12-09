# CoinbasePro::ApiPostReportsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Start date for items to be included in report. | [optional][default to &#39;&lt;30 days ago&gt;&#39;] |
| **end_date** | **String** | End date for items to be included in report | [optional][default to &#39;&lt;today&gt;&#39;] |
| **type** | [**ApiReportType**](ApiReportType.md) |  | [default to &#39;fills&#39;] |
| **year** | **String** | required for &#x60;1099k-transaction-history&#x60;-type reports | [optional] |
| **format** | [**ApiReportFormat**](ApiReportFormat.md) |  | [optional][default to &#39;pdf&#39;] |
| **product_id** | **String** | Product - required for &#x60;fills&#x60;-type reports | [optional] |
| **account_id** | **String** | Account - required for &#x60;account&#x60;-type reports | [optional] |
| **email** | **String** | Email to send generated report to | [optional] |
| **profile_id** | **String** | Portfolio - Which portfolio to generate the report for | [optional] |

## Example

```ruby
require 'coinbase-exchange-ruby'

instance = CoinbasePro::ApiPostReportsRequest.new(
  start_date: null,
  end_date: null,
  type: null,
  year: null,
  format: null,
  product_id: null,
  account_id: null,
  email: null,
  profile_id: null
)
```

