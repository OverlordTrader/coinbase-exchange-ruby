=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CoinbasePro::ConversionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConversionsApi' do
  before do
    # run before each test
    @api_instance = CoinbasePro::ConversionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConversionsApi' do
    it 'should create an instance of ConversionsApi' do
      expect(@api_instance).to be_instance_of(CoinbasePro::ConversionsApi)
    end
  end

  # unit tests for exchange_restapi_get_conversion
  # Get a conversion
  # Gets a currency conversion by id (i.e. USD -&gt; USDC).
  # @param conversion_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id 
  # @return [ApiConversion]
  describe 'exchange_restapi_get_conversion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_post_conversion
  # Convert currency
  # Converts funds from &#x60;from&#x60; currency to &#x60;to&#x60; currency. Funds are converted on the &#x60;from&#x60; account in the &#x60;profile_id&#x60; profile.
  # @param api_post_conversion_request 
  # @param [Hash] opts the optional parameters
  # @return [ApiConversion]
  describe 'exchange_restapi_post_conversion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end