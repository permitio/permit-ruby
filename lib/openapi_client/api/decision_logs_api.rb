=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class DecisionLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List PDP Decisions
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param pdp_id [String] The unique id of the pdp
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :users List of user IDs to filter by
    # @option opts [Boolean] :approved Filter by approved decisions
    # @option opts [Array<String>] :resources Filter by resources
    # @option opts [Integer] :timestamp_from Filter by timestamp from
    # @option opts [Integer] :timestamp_to Filter by timestamp to
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [PaginatedResultOPADecisionLog]
    def list_pdp_decision_logs(proj_id, env_id, pdp_id, opts = {})
      data, _status_code, _headers = list_pdp_decision_logs_with_http_info(proj_id, env_id, pdp_id, opts)
      data
    end

    # List PDP Decisions
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param pdp_id [String] The unique id of the pdp
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :users List of user IDs to filter by
    # @option opts [Boolean] :approved Filter by approved decisions
    # @option opts [Array<String>] :resources Filter by resources
    # @option opts [Integer] :timestamp_from Filter by timestamp from
    # @option opts [Integer] :timestamp_to Filter by timestamp to
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<(PaginatedResultOPADecisionLog, Integer, Hash)>] PaginatedResultOPADecisionLog data, response status code and response headers
    def list_pdp_decision_logs_with_http_info(proj_id, env_id, pdp_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DecisionLogsApi.list_pdp_decision_logs ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling DecisionLogsApi.list_pdp_decision_logs"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling DecisionLogsApi.list_pdp_decision_logs"
      end
      # verify the required parameter 'pdp_id' is set
      if @api_client.config.client_side_validation && pdp_id.nil?
        fail ArgumentError, "Missing the required parameter 'pdp_id' when calling DecisionLogsApi.list_pdp_decision_logs"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling DecisionLogsApi.list_pdp_decision_logs, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling DecisionLogsApi.list_pdp_decision_logs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling DecisionLogsApi.list_pdp_decision_logs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v2/pdps/{proj_id}/{env_id}/decision-logs/{pdp_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'pdp_id' + '}', CGI.escape(pdp_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'users'] = @api_client.build_collection_param(opts[:'users'], :multi) if !opts[:'users'].nil?
      query_params[:'approved'] = opts[:'approved'] if !opts[:'approved'].nil?
      query_params[:'resources'] = @api_client.build_collection_param(opts[:'resources'], :multi) if !opts[:'resources'].nil?
      query_params[:'timestamp_from'] = opts[:'timestamp_from'] if !opts[:'timestamp_from'].nil?
      query_params[:'timestamp_to'] = opts[:'timestamp_to'] if !opts[:'timestamp_to'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedResultOPADecisionLog'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"DecisionLogsApi.list_pdp_decision_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DecisionLogsApi#list_pdp_decision_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
