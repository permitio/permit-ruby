=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class InstructionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Language Instructions
    # Lists pending organization invites
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<LanguageInstructions>]
    def list_language_instructions(proj_id, env_id, opts = {})
      data, _status_code, _headers = list_language_instructions_with_http_info(proj_id, env_id, opts)
      data
    end

    # List Language Instructions
    # Lists pending organization invites
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LanguageInstructions>, Integer, Hash)>] Array<LanguageInstructions> data, response status code and response headers
    def list_language_instructions_with_http_info(proj_id, env_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstructionsApi.list_language_instructions ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling InstructionsApi.list_language_instructions"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling InstructionsApi.list_language_instructions"
      end
      # resource path
      local_var_path = '/v2/{proj_id}/{env_id}/get_instructions'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LanguageInstructions>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"InstructionsApi.list_language_instructions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstructionsApi#list_language_instructions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
