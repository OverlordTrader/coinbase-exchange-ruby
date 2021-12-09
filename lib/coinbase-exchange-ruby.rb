=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

# Common files
require 'coinbase-exchange-ruby/api_client'
require 'coinbase-exchange-ruby/api_error'
require 'coinbase-exchange-ruby/version'
require 'coinbase-exchange-ruby/configuration'

# Models
require 'coinbase-exchange-ruby/models/account_hold_account_hold_type'
require 'coinbase-exchange-ruby/models/account_ledger_entry_account_ledger_type'
require 'coinbase-exchange-ruby/models/api_account'
require 'coinbase-exchange-ruby/models/api_account_hold'
require 'coinbase-exchange-ruby/models/api_account_ledger_entry'
require 'coinbase-exchange-ruby/models/api_auction_book'
require 'coinbase-exchange-ruby/models/api_coinbase_account'
require 'coinbase-exchange-ruby/models/api_coinbase_account_address_info'
require 'coinbase-exchange-ruby/models/api_coinbase_account_address_warning'
require 'coinbase-exchange-ruby/models/api_coinbase_account_bank_country'
require 'coinbase-exchange-ruby/models/api_coinbase_account_generated_deposit_address'
require 'coinbase-exchange-ruby/models/api_coinbase_account_sepa_deposit_information'
require 'coinbase-exchange-ruby/models/api_coinbase_account_swift_deposit_information'
require 'coinbase-exchange-ruby/models/api_coinbase_account_uk_deposit_information'
require 'coinbase-exchange-ruby/models/api_coinbase_account_wire_deposit_information'
require 'coinbase-exchange-ruby/models/api_coinbase_price_oracle'
require 'coinbase-exchange-ruby/models/api_conversion'
require 'coinbase-exchange-ruby/models/api_currency'
require 'coinbase-exchange-ruby/models/api_currency_details'
require 'coinbase-exchange-ruby/models/api_currency_type'
require 'coinbase-exchange-ruby/models/api_delete_order_response'
require 'coinbase-exchange-ruby/models/api_delete_orders_response'
require 'coinbase-exchange-ruby/models/api_error_response'
require 'coinbase-exchange-ruby/models/api_fee_estimate_result'
require 'coinbase-exchange-ruby/models/api_fees'
require 'coinbase-exchange-ruby/models/api_get_account_holds_response'
require 'coinbase-exchange-ruby/models/api_get_account_ledger_response'
require 'coinbase-exchange-ruby/models/api_get_account_response'
require 'coinbase-exchange-ruby/models/api_get_account_transfers_response'
require 'coinbase-exchange-ruby/models/api_get_accounts_response'
require 'coinbase-exchange-ruby/models/api_get_coinbase_accounts_response'
require 'coinbase-exchange-ruby/models/api_get_coinbase_price_oracle_response'
require 'coinbase-exchange-ruby/models/api_get_conversion_response'
require 'coinbase-exchange-ruby/models/api_get_currencies_response'
require 'coinbase-exchange-ruby/models/api_get_currency_response'
require 'coinbase-exchange-ruby/models/api_get_fees_response'
require 'coinbase-exchange-ruby/models/api_get_fills_response'
require 'coinbase-exchange-ruby/models/api_get_order_response'
require 'coinbase-exchange-ruby/models/api_get_orders_response'
require 'coinbase-exchange-ruby/models/api_get_payment_methods_response'
require 'coinbase-exchange-ruby/models/api_get_product_book_response'
require 'coinbase-exchange-ruby/models/api_get_product_candles_response'
require 'coinbase-exchange-ruby/models/api_get_product_response'
require 'coinbase-exchange-ruby/models/api_get_product_stats_response'
require 'coinbase-exchange-ruby/models/api_get_product_ticker_response'
require 'coinbase-exchange-ruby/models/api_get_product_trades_response'
require 'coinbase-exchange-ruby/models/api_get_products_response'
require 'coinbase-exchange-ruby/models/api_get_profile_response'
require 'coinbase-exchange-ruby/models/api_get_profiles_response'
require 'coinbase-exchange-ruby/models/api_get_report_response'
require 'coinbase-exchange-ruby/models/api_get_reports_response'
require 'coinbase-exchange-ruby/models/api_get_transfer_fee_estimate_response'
require 'coinbase-exchange-ruby/models/api_get_transfer_response'
require 'coinbase-exchange-ruby/models/api_get_transfers_response'
require 'coinbase-exchange-ruby/models/api_get_user_exchange_limits_response'
require 'coinbase-exchange-ruby/models/api_monorail_currency_amount'
require 'coinbase-exchange-ruby/models/api_monorail_linked_resource'
require 'coinbase-exchange-ruby/models/api_order'
require 'coinbase-exchange-ruby/models/api_order_cancel_after'
require 'coinbase-exchange-ruby/models/api_order_fill'
require 'coinbase-exchange-ruby/models/api_order_fill_liquidity'
require 'coinbase-exchange-ruby/models/api_order_side'
require 'coinbase-exchange-ruby/models/api_order_sorted_by'
require 'coinbase-exchange-ruby/models/api_order_sorting'
require 'coinbase-exchange-ruby/models/api_order_status'
require 'coinbase-exchange-ruby/models/api_order_stop'
require 'coinbase-exchange-ruby/models/api_order_stp_flag'
require 'coinbase-exchange-ruby/models/api_order_time_in_force'
require 'coinbase-exchange-ruby/models/api_order_type'
require 'coinbase-exchange-ruby/models/api_partial_user'
require 'coinbase-exchange-ruby/models/api_payment_method'
require 'coinbase-exchange-ruby/models/api_payment_method_available_balance'
require 'coinbase-exchange-ruby/models/api_payment_method_limits'
require 'coinbase-exchange-ruby/models/api_payment_method_picker_data'
require 'coinbase-exchange-ruby/models/api_payment_method_recurring_option'
require 'coinbase-exchange-ruby/models/api_post_coinbase_account_addresses_response'
require 'coinbase-exchange-ruby/models/api_post_conversion_request'
require 'coinbase-exchange-ruby/models/api_post_conversion_response'
require 'coinbase-exchange-ruby/models/api_post_orders_request'
require 'coinbase-exchange-ruby/models/api_post_orders_response'
require 'coinbase-exchange-ruby/models/api_post_profile_request'
require 'coinbase-exchange-ruby/models/api_post_profile_response'
require 'coinbase-exchange-ruby/models/api_post_profile_transfer_request'
require 'coinbase-exchange-ruby/models/api_post_reports_request'
require 'coinbase-exchange-ruby/models/api_post_reports_response'
require 'coinbase-exchange-ruby/models/api_post_transfer_coinbase_account_request'
require 'coinbase-exchange-ruby/models/api_post_transfer_crypto_request'
require 'coinbase-exchange-ruby/models/api_post_transfer_payment_method_request'
require 'coinbase-exchange-ruby/models/api_post_transfer_response'
require 'coinbase-exchange-ruby/models/api_product'
require 'coinbase-exchange-ruby/models/api_product_book'
require 'coinbase-exchange-ruby/models/api_product_stats24_hour'
require 'coinbase-exchange-ruby/models/api_product_status_enum'
require 'coinbase-exchange-ruby/models/api_product_ticker'
require 'coinbase-exchange-ruby/models/api_product_trade'
require 'coinbase-exchange-ruby/models/api_profile'
require 'coinbase-exchange-ruby/models/api_put_profile_deactivate_request'
require 'coinbase-exchange-ruby/models/api_put_profile_request'
require 'coinbase-exchange-ruby/models/api_put_profile_response'
require 'coinbase-exchange-ruby/models/api_report'
require 'coinbase-exchange-ruby/models/api_report_create_result'
require 'coinbase-exchange-ruby/models/api_report_create_result_report_status'
require 'coinbase-exchange-ruby/models/api_report_format'
require 'coinbase-exchange-ruby/models/api_report_params'
require 'coinbase-exchange-ruby/models/api_report_report_status'
require 'coinbase-exchange-ruby/models/api_report_type'
require 'coinbase-exchange-ruby/models/api_transfer'
require 'coinbase-exchange-ruby/models/api_transfer_result'
require 'coinbase-exchange-ruby/models/api_transfer_type'
require 'coinbase-exchange-ruby/models/api_unauthorized_response'
require 'coinbase-exchange-ruby/models/api_user_exchange_transfer_limits'
require 'coinbase-exchange-ruby/models/api_user_exchange_transfer_limits_entry'
require 'coinbase-exchange-ruby/models/api_user_exchange_transfer_limits_for_currency'
require 'coinbase-exchange-ruby/models/coinbase_account_coinbase_account_type'
require 'coinbase-exchange-ruby/models/protobuf_null_value'

# APIs
require 'coinbase-exchange-ruby/api/accounts_api'
require 'coinbase-exchange-ruby/api/coinbase_accounts_api'
require 'coinbase-exchange-ruby/api/coinbase_price_oracle_api'
require 'coinbase-exchange-ruby/api/conversions_api'
require 'coinbase-exchange-ruby/api/currencies_api'
require 'coinbase-exchange-ruby/api/fees_api'
require 'coinbase-exchange-ruby/api/orders_api'
require 'coinbase-exchange-ruby/api/products_api'
require 'coinbase-exchange-ruby/api/profiles_api'
require 'coinbase-exchange-ruby/api/reports_api'
require 'coinbase-exchange-ruby/api/transfers_api'
require 'coinbase-exchange-ruby/api/users_api'

module CoinbasePro
  class << self
    # Customize default settings for the SDK using block.
    #   CoinbasePro.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
