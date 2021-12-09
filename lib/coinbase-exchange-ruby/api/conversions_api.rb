=begin
#Coinbase Exchange REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'cgi'

module CoinbasePro
  class ConversionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a conversion
    # Gets a currency conversion by id (i.e. USD -> USDC).
    # @param conversion_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id 
    # @return [ApiConversion]
    def exchange_restapi_get_conversion(conversion_id, opts = {})
      data, _status_code, _headers = exchange_restapi_get_conversion_with_http_info(conversion_id, opts)
      data
    end

    # Get a conversion
    # Gets a currency conversion by id (i.e. USD -&gt; USDC).
    # @param conversion_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id 
    # @return [Array<(ApiConversion, Integer, Hash)>] ApiConversion data, response status code and response headers
    def exchange_restapi_get_conversion_with_http_info(conversion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversionsApi.exchange_restapi_get_conversion ...'
      end
      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling ConversionsApi.exchange_restapi_get_conversion"
      end
      # resource path
      local_var_path = '/conversions/{conversion_id}'.sub('{' + 'conversion_id' + '}', CGI.escape(conversion_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'ApiConversion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"ConversionsApi.exchange_restapi_get_conversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsApi#exchange_restapi_get_conversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert currency
    # Converts funds from `from` currency to `to` currency. Funds are converted on the `from` account in the `profile_id` profile.
    # @param api_post_conversion_request [ApiPostConversionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApiConversion]
    def exchange_restapi_post_conversion(api_post_conversion_request, opts = {})
      data, _status_code, _headers = exchange_restapi_post_conversion_with_http_info(api_post_conversion_request, opts)
      data
    end

    # Convert currency
    # Converts funds from &#x60;from&#x60; currency to &#x60;to&#x60; currency. Funds are converted on the &#x60;from&#x60; account in the &#x60;profile_id&#x60; profile.
    # @param api_post_conversion_request [ApiPostConversionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiConversion, Integer, Hash)>] ApiConversion data, response status code and response headers
    def exchange_restapi_post_conversion_with_http_info(api_post_conversion_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversionsApi.exchange_restapi_post_conversion ...'
      end
      # verify the required parameter 'api_post_conversion_request' is set
      if @api_client.config.client_side_validation && api_post_conversion_request.nil?
        fail ArgumentError, "Missing the required parameter 'api_post_conversion_request' when calling ConversionsApi.exchange_restapi_post_conversion"
      end
      # resource path
      local_var_path = '/conversions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(api_post_conversion_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiConversion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuthKey', 'ApiKeyAuthPassphrase', 'ApiKeyAuthSign', 'ApiKeyAuthTimestamp']

      new_options = opts.merge(
        :operation => :"ConversionsApi.exchange_restapi_post_conversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsApi#exchange_restapi_post_conversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end