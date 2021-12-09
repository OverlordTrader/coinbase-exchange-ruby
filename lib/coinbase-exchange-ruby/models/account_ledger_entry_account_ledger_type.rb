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
  class AccountLedgerEntryAccountLedgerType
    TRANSFER = "transfer".freeze
    MATCH = "match".freeze
    FEE = "fee".freeze
    CONVERSION = "conversion".freeze
    MARGIN_INTEREST = "margin_interest".freeze
    REBATE = "rebate".freeze
    OTC_FEE = "otc_fee".freeze
    OTC_MATCH = "otc_match".freeze

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
      constantValues = AccountLedgerEntryAccountLedgerType.constants.select { |c| AccountLedgerEntryAccountLedgerType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AccountLedgerEntryAccountLedgerType" if constantValues.empty?
      value
    end
  end
end
