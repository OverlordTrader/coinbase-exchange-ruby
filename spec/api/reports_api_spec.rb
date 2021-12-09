=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CoinbasePro::ReportsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReportsApi' do
  before do
    # run before each test
    @api_instance = CoinbasePro::ReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportsApi' do
    it 'should create an instance of ReportsApi' do
      expect(@api_instance).to be_instance_of(CoinbasePro::ReportsApi)
    end
  end

  # unit tests for exchange_restapi_get_report
  # Get a report
  # Get a specific report by &#x60;report_id&#x60;.
  # @param report_id 
  # @param [Hash] opts the optional parameters
  # @return [ApiReport]
  describe 'exchange_restapi_get_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_reports
  # Get all reports
  # Gets a list of past fills/account reports.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :portfolio_id Filter results by a specific profile_id
  # @option opts [Time] :after Filter results after a specific date
  # @option opts [Integer] :limit Limit results to a specific number
  # @option opts [String] :type Filter results by type of report (&#x60;fills&#x60; or &#x60;account&#x60;)   - otc_fills: real string is &#x60;otc-fills&#x60;  - type_1099k_transaction_history: real string is &#x60;1099-transaction-history&#x60;  - tax_invoice: real string is &#x60;tax-invoice&#x60;
  # @option opts [Boolean] :ignore_expired Ignore expired results
  # @return [Array<ApiReport>]
  describe 'exchange_restapi_get_reports test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_post_reports
  # Create a report
  # Generates a report. Reports are either for past account history or past fills on either all accounts or one product&#39;s account.
  # @param api_post_reports_request 
  # @param [Hash] opts the optional parameters
  # @return [ApiReportCreateResult]
  describe 'exchange_restapi_post_reports test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end