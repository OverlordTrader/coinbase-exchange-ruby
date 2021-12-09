=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for CoinbasePro::ProductsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductsApi' do
  before do
    # run before each test
    @api_instance = CoinbasePro::ProductsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductsApi' do
    it 'should create an instance of ProductsApi' do
      expect(@api_instance).to be_instance_of(CoinbasePro::ProductsApi)
    end
  end

  # unit tests for exchange_restapi_get_product
  # Get single product
  # Get information on a single product.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @return [ApiProduct]
  describe 'exchange_restapi_get_product test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_product_book
  # Get product book
  # Get a list of open orders for a product. The amount of detail shown can be customized with the &#x60;level&#x60; parameter.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :level 
  # @return [ApiProductBook]
  describe 'exchange_restapi_get_product_book test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_product_candles
  # Get product candles
  # Historic rates for a product. Rates are returned in grouped buckets. Candle schema is of the form &#x60;[timestamp, price_low, price_high, price_open, price_close]&#x60;
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :granularity 
  # @option opts [String] :start Timestamp for starting range of aggregations
  # @option opts [String] :_end Timestamp for ending range of aggregations
  # @return [Array<Object>]
  describe 'exchange_restapi_get_product_candles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_product_stats
  # Get product stats
  # Gets 30day and 24hour stats for a product.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @return [ApiProductStats24Hour]
  describe 'exchange_restapi_get_product_stats test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_product_ticker
  # Get product ticker
  # Gets snapshot information about the last trade (tick), best bid/ask and 24h volume.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @return [ApiProductTicker]
  describe 'exchange_restapi_get_product_ticker test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_product_trades
  # Get product trades
  # Gets a list the latest trades for a product.
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit 
  # @option opts [Integer] :before 
  # @option opts [Integer] :after 
  # @return [Array<ApiProductTrade>]
  describe 'exchange_restapi_get_product_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for exchange_restapi_get_products
  # Get all known trading pairs
  # Gets a list of available currency pairs for trading.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type 
  # @return [Array<ApiProduct>]
  describe 'exchange_restapi_get_products test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
