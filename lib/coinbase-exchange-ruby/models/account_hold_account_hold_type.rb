=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module CoinbasePro
  class AccountHoldAccountHoldType
    ORDER = "order".freeze
    TRANSFER = "transfer".freeze
    FUNDING = "funding".freeze
    PROFILE_TRANSFER = "profile_transfer".freeze
    OTC_ORDER = "otc_order".freeze
    LAUNCH_SELL = "launch_sell".freeze
    LAUNCH_BUY = "launch_buy".freeze
    ENGINE_CREDIT_OPERATION = "engine_credit_operation".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AccountHoldAccountHoldType.constants.select { |c| AccountHoldAccountHoldType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AccountHoldAccountHoldType" if constantValues.empty?
      value
    end
  end
end
