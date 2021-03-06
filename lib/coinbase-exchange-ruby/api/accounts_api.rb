=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'cgi'

module CoinbasePro
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a single account by id
    # Information for a single account. Use this endpoint when you know the account_id. API key must belong to the same profile as the account.
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ApiAccount]
    def exchange_restapi_get_account(account_id, opts = {})
      data, _status_code, _headers = exchange_restapi_get_account_with_http_info(account_id, opts)
      data
    end

    # Get a single account by id
    # Information for a single account. Use this endpoint when you know the account_id. API key must belong to the same profile as the account.
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiAccount, Integer, Hash)>] ApiAccount data, response status code and response headers
    def exchange_restapi_get_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.exchange_restapi_get_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.exchange_restapi_get_account"
      end
      # resource path
      local_var_path = '/accounts/{account_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"AccountsApi.exchange_restapi_get_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#exchange_restapi_get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single account's holds
    # List the holds of an account that belong to the same profile as the API key. Holds are placed on an account for any active orders or pending withdraw requests. As an order is filled, the hold amount is updated. If an order is canceled, any remaining hold is removed. For withdrawals, the hold is removed after it is completed.
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :before Used for pagination. Sets start cursor to &#x60;before&#x60; date.
    # @option opts [String] :after Used for pagination. Sets end cursor to &#x60;after&#x60; date.
    # @option opts [Integer] :limit Limit on number of results to return.
    # @return [Array<ApiAccountHold>]
    def exchange_restapi_get_account_holds(account_id, opts = {})
      data, _status_code, _headers = exchange_restapi_get_account_holds_with_http_info(account_id, opts)
      data
    end

    # Get a single account&#39;s holds
    # List the holds of an account that belong to the same profile as the API key. Holds are placed on an account for any active orders or pending withdraw requests. As an order is filled, the hold amount is updated. If an order is canceled, any remaining hold is removed. For withdrawals, the hold is removed after it is completed.
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :before Used for pagination. Sets start cursor to &#x60;before&#x60; date.
    # @option opts [String] :after Used for pagination. Sets end cursor to &#x60;after&#x60; date.
    # @option opts [Integer] :limit Limit on number of results to return.
    # @return [Array<(Array<ApiAccountHold>, Integer, Hash)>] Array<ApiAccountHold> data, response status code and response headers
    def exchange_restapi_get_account_holds_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.exchange_restapi_get_account_holds ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.exchange_restapi_get_account_holds"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/holds'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ApiAccountHold>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"AccountsApi.exchange_restapi_get_account_holds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#exchange_restapi_get_account_holds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single account's ledger
    # Lists ledger activity for an account. This includes anything that would affect the accounts balance - transfers, trades, fees, etc.
    # @param account_id [String] Returns list of ledger entries from this account id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Filter results by minimum posted date.
    # @option opts [String] :end_date Filter results by maximum posted date.
    # @option opts [String] :before Used for pagination. Sets start cursor to &#x60;before&#x60; date.
    # @option opts [String] :after Used for pagination. Sets end cursor to &#x60;after&#x60; date.
    # @option opts [Integer] :limit Limit on number of results to return.
    # @option opts [String] :profile_id 
    # @return [Array<ApiAccountLedgerEntry>]
    def exchange_restapi_get_account_ledger(account_id, opts = {})
      data, _status_code, _headers = exchange_restapi_get_account_ledger_with_http_info(account_id, opts)
      data
    end

    # Get a single account&#39;s ledger
    # Lists ledger activity for an account. This includes anything that would affect the accounts balance - transfers, trades, fees, etc.
    # @param account_id [String] Returns list of ledger entries from this account id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :start_date Filter results by minimum posted date.
    # @option opts [String] :end_date Filter results by maximum posted date.
    # @option opts [String] :before Used for pagination. Sets start cursor to &#x60;before&#x60; date.
    # @option opts [String] :after Used for pagination. Sets end cursor to &#x60;after&#x60; date.
    # @option opts [Integer] :limit Limit on number of results to return.
    # @option opts [String] :profile_id 
    # @return [Array<(Array<ApiAccountLedgerEntry>, Integer, Hash)>] Array<ApiAccountLedgerEntry> data, response status code and response headers
    def exchange_restapi_get_account_ledger_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.exchange_restapi_get_account_ledger ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.exchange_restapi_get_account_ledger"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/ledger'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'profile_id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ApiAccountLedgerEntry>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"AccountsApi.exchange_restapi_get_account_ledger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#exchange_restapi_get_account_ledger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single account's transfers
    # Lists past withdrawals and deposits for an account.
    # @param account_id [String] Returns list of transfers from this account id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :before Used for pagination. Sets start cursor to &#x60;before&#x60; date.
    # @option opts [String] :after Used for pagination. Sets end cursor to &#x60;after&#x60; date.
    # @option opts [Integer] :limit Limit on number of results to return.
    # @option opts [String] :type 
    # @return [Array<ApiTransfer>]
    def exchange_restapi_get_account_transfers(account_id, opts = {})
      data, _status_code, _headers = exchange_restapi_get_account_transfers_with_http_info(account_id, opts)
      data
    end

    # Get a single account&#39;s transfers
    # Lists past withdrawals and deposits for an account.
    # @param account_id [String] Returns list of transfers from this account id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :before Used for pagination. Sets start cursor to &#x60;before&#x60; date.
    # @option opts [String] :after Used for pagination. Sets end cursor to &#x60;after&#x60; date.
    # @option opts [Integer] :limit Limit on number of results to return.
    # @option opts [String] :type 
    # @return [Array<(Array<ApiTransfer>, Integer, Hash)>] Array<ApiTransfer> data, response status code and response headers
    def exchange_restapi_get_account_transfers_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.exchange_restapi_get_account_transfers ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.exchange_restapi_get_account_transfers"
      end
      # resource path
      local_var_path = '/accounts/{account_id}/transfers'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ApiTransfer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"AccountsApi.exchange_restapi_get_account_transfers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#exchange_restapi_get_account_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all accounts for a profile
    # Get a list of trading accounts from the profile of the API key.
    # @param [Hash] opts the optional parameters
    # @return [Array<ApiAccount>]
    def exchange_restapi_get_accounts(opts = {})
      data, _status_code, _headers = exchange_restapi_get_accounts_with_http_info(opts)
      data
    end

    # Get all accounts for a profile
    # Get a list of trading accounts from the profile of the API key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApiAccount>, Integer, Hash)>] Array<ApiAccount> data, response status code and response headers
    def exchange_restapi_get_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.exchange_restapi_get_accounts ...'
      end
      # resource path
      local_var_path = '/accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ApiAccount>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"AccountsApi.exchange_restapi_get_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#exchange_restapi_get_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
