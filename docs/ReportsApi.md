# CoinbasePro::ReportsApi

All URIs are relative to *https://api.exchange.coinbase.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_restapi_get_report**](ReportsApi.md#exchange_restapi_get_report) | **GET** /reports/{report_id} | Get a report |
| [**exchange_restapi_get_reports**](ReportsApi.md#exchange_restapi_get_reports) | **GET** /reports | Get all reports |
| [**exchange_restapi_post_reports**](ReportsApi.md#exchange_restapi_post_reports) | **POST** /reports | Create a report |


## exchange_restapi_get_report

> <ApiReport> exchange_restapi_get_report(report_id)

Get a report

Get a specific report by `report_id`.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'
# setup authorization
CoinbasePro.configure do |config|
  # Configure API key authorization: ApiKeyAuthKey
  config.api_key['cb-access-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-key'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthPassphrase
  config.api_key['cb-access-passphrase'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-passphrase'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthSign
  config.api_key['cb-access-sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-sign'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthTimestamp
  config.api_key['cb-access-timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-timestamp'] = 'Bearer'
end

api_instance = CoinbasePro::ReportsApi.new
report_id = 'report_id_example' # String | 

begin
  # Get a report
  result = api_instance.exchange_restapi_get_report(report_id)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ReportsApi->exchange_restapi_get_report: #{e}"
end
```

#### Using the exchange_restapi_get_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiReport>, Integer, Hash)> exchange_restapi_get_report_with_http_info(report_id)

```ruby
begin
  # Get a report
  data, status_code, headers = api_instance.exchange_restapi_get_report_with_http_info(report_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiReport>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ReportsApi->exchange_restapi_get_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |

### Return type

[**ApiReport**](ApiReport.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_get_reports

> <Array<ApiReport>> exchange_restapi_get_reports(opts)

Get all reports

Gets a list of past fills/account reports.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'
# setup authorization
CoinbasePro.configure do |config|
  # Configure API key authorization: ApiKeyAuthKey
  config.api_key['cb-access-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-key'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthPassphrase
  config.api_key['cb-access-passphrase'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-passphrase'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthSign
  config.api_key['cb-access-sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-sign'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthTimestamp
  config.api_key['cb-access-timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-timestamp'] = 'Bearer'
end

api_instance = CoinbasePro::ReportsApi.new
opts = {
  portfolio_id: 'portfolio_id_example', # String | Filter results by a specific profile_id
  after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter results after a specific date
  limit: 789, # Integer | Limit results to a specific number
  type: 'fills', # String | Filter results by type of report (`fills` or `account`)   - otc_fills: real string is `otc-fills`  - type_1099k_transaction_history: real string is `1099-transaction-history`  - tax_invoice: real string is `tax-invoice`
  ignore_expired: true # Boolean | Ignore expired results
}

begin
  # Get all reports
  result = api_instance.exchange_restapi_get_reports(opts)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ReportsApi->exchange_restapi_get_reports: #{e}"
end
```

#### Using the exchange_restapi_get_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiReport>>, Integer, Hash)> exchange_restapi_get_reports_with_http_info(opts)

```ruby
begin
  # Get all reports
  data, status_code, headers = api_instance.exchange_restapi_get_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiReport>>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ReportsApi->exchange_restapi_get_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_id** | **String** | Filter results by a specific profile_id | [optional] |
| **after** | **Time** | Filter results after a specific date | [optional] |
| **limit** | **Integer** | Limit results to a specific number | [optional] |
| **type** | **String** | Filter results by type of report (&#x60;fills&#x60; or &#x60;account&#x60;)   - otc_fills: real string is &#x60;otc-fills&#x60;  - type_1099k_transaction_history: real string is &#x60;1099-transaction-history&#x60;  - tax_invoice: real string is &#x60;tax-invoice&#x60; | [optional][default to &#39;fills&#39;] |
| **ignore_expired** | **Boolean** | Ignore expired results | [optional] |

### Return type

[**Array&lt;ApiReport&gt;**](ApiReport.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_restapi_post_reports

> <ApiReportCreateResult> exchange_restapi_post_reports(api_post_reports_request)

Create a report

Generates a report. Reports are either for past account history or past fills on either all accounts or one product's account.

### Examples

```ruby
require 'time'
require 'coinbase-exchange-ruby'
# setup authorization
CoinbasePro.configure do |config|
  # Configure API key authorization: ApiKeyAuthKey
  config.api_key['cb-access-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-key'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthPassphrase
  config.api_key['cb-access-passphrase'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-passphrase'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthSign
  config.api_key['cb-access-sign'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-sign'] = 'Bearer'

  # Configure API key authorization: ApiKeyAuthTimestamp
  config.api_key['cb-access-timestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['cb-access-timestamp'] = 'Bearer'
end

api_instance = CoinbasePro::ReportsApi.new
api_post_reports_request = CoinbasePro::ApiPostReportsRequest.new({type: CoinbasePro::ApiReportType::FILLS}) # ApiPostReportsRequest | 

begin
  # Create a report
  result = api_instance.exchange_restapi_post_reports(api_post_reports_request)
  p result
rescue CoinbasePro::ApiError => e
  puts "Error when calling ReportsApi->exchange_restapi_post_reports: #{e}"
end
```

#### Using the exchange_restapi_post_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiReportCreateResult>, Integer, Hash)> exchange_restapi_post_reports_with_http_info(api_post_reports_request)

```ruby
begin
  # Create a report
  data, status_code, headers = api_instance.exchange_restapi_post_reports_with_http_info(api_post_reports_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiReportCreateResult>
rescue CoinbasePro::ApiError => e
  puts "Error when calling ReportsApi->exchange_restapi_post_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_post_reports_request** | [**ApiPostReportsRequest**](ApiPostReportsRequest.md) |  |  |

### Return type

[**ApiReportCreateResult**](ApiReportCreateResult.md)

### Authorization

[ApiKeyAuthKey](../README.md#ApiKeyAuthKey), [ApiKeyAuthPassphrase](../README.md#ApiKeyAuthPassphrase), [ApiKeyAuthSign](../README.md#ApiKeyAuthSign), [ApiKeyAuthTimestamp](../README.md#ApiKeyAuthTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

