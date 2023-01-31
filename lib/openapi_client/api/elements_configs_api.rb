=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class ElementsConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Elements Config
    # Creates a new elements_config under the active organization.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_create [ElementsConfigCreate] 
    # @param [Hash] opts the optional parameters
    # @return [ElementsConfigRead]
    def create_elements_config(proj_id, env_id, elements_config_create, opts = {})
      data, _status_code, _headers = create_elements_config_with_http_info(proj_id, env_id, elements_config_create, opts)
      data
    end

    # Create Elements Config
    # Creates a new elements_config under the active organization.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_create [ElementsConfigCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElementsConfigRead, Integer, Hash)>] ElementsConfigRead data, response status code and response headers
    def create_elements_config_with_http_info(proj_id, env_id, elements_config_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.create_elements_config ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.create_elements_config"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.create_elements_config"
      end
      # verify the required parameter 'elements_config_create' is set
      if @api_client.config.client_side_validation && elements_config_create.nil?
        fail ArgumentError, "Missing the required parameter 'elements_config_create' when calling ElementsConfigsApi.create_elements_config"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/config'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(elements_config_create)

      # return_type
      return_type = opts[:debug_return_type] || 'ElementsConfigRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.create_elements_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#create_elements_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Elements Config
    # Deletes the elements_config and all its related data.
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_elements_config(elements_config_id, proj_id, env_id, opts = {})
      delete_elements_config_with_http_info(elements_config_id, proj_id, env_id, opts)
      nil
    end

    # Delete Elements Config
    # Deletes the elements_config and all its related data.
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_elements_config_with_http_info(elements_config_id, proj_id, env_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.delete_elements_config ...'
      end
      # verify the required parameter 'elements_config_id' is set
      if @api_client.config.client_side_validation && elements_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'elements_config_id' when calling ElementsConfigsApi.delete_elements_config"
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.delete_elements_config"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.delete_elements_config"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/{elements_config_id}'.sub('{' + 'elements_config_id' + '}', CGI.escape(elements_config_id.to_s)).sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.delete_elements_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#delete_elements_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Elements Config
    # Gets a single elements_config matching the given elements_config_id, if such elements_config exists.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [ElementsConfigRead]
    def get_elements_config(proj_id, env_id, elements_config_id, opts = {})
      data, _status_code, _headers = get_elements_config_with_http_info(proj_id, env_id, elements_config_id, opts)
      data
    end

    # Get Elements Config
    # Gets a single elements_config matching the given elements_config_id, if such elements_config exists.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElementsConfigRead, Integer, Hash)>] ElementsConfigRead data, response status code and response headers
    def get_elements_config_with_http_info(proj_id, env_id, elements_config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.get_elements_config ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.get_elements_config"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.get_elements_config"
      end
      # verify the required parameter 'elements_config_id' is set
      if @api_client.config.client_side_validation && elements_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'elements_config_id' when calling ElementsConfigsApi.get_elements_config"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/config/{elements_config_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'elements_config_id' + '}', CGI.escape(elements_config_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElementsConfigRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.get_elements_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#get_elements_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Elements Config Runtime
    # Gets a single elements_config matching the given elements_config_id, if such elements_config exists.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [ElementsConfigRuntimeRead]
    def get_elements_config_runtime(proj_id, env_id, elements_config_id, opts = {})
      data, _status_code, _headers = get_elements_config_runtime_with_http_info(proj_id, env_id, elements_config_id, opts)
      data
    end

    # Get Elements Config Runtime
    # Gets a single elements_config matching the given elements_config_id, if such elements_config exists.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElementsConfigRuntimeRead, Integer, Hash)>] ElementsConfigRuntimeRead data, response status code and response headers
    def get_elements_config_runtime_with_http_info(proj_id, env_id, elements_config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.get_elements_config_runtime ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.get_elements_config_runtime"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.get_elements_config_runtime"
      end
      # verify the required parameter 'elements_config_id' is set
      if @api_client.config.client_side_validation && elements_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'elements_config_id' when calling ElementsConfigsApi.get_elements_config_runtime"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/runtime'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'elements_config_id' + '}', CGI.escape(elements_config_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElementsConfigRuntimeRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.get_elements_config_runtime",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#get_elements_config_runtime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Elements Type Config
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param element_type [ElementsType] Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [ElementsEnvTypeRead]
    def get_elements_type_config(proj_id, env_id, element_type, opts = {})
      data, _status_code, _headers = get_elements_type_config_with_http_info(proj_id, env_id, element_type, opts)
      data
    end

    # Get Elements Type Config
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param element_type [ElementsType] Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElementsEnvTypeRead, Integer, Hash)>] ElementsEnvTypeRead data, response status code and response headers
    def get_elements_type_config_with_http_info(proj_id, env_id, element_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.get_elements_type_config ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.get_elements_type_config"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.get_elements_type_config"
      end
      # verify the required parameter 'element_type' is set
      if @api_client.config.client_side_validation && element_type.nil?
        fail ArgumentError, "Missing the required parameter 'element_type' when calling ElementsConfigsApi.get_elements_type_config"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/{element_type}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'element_type' + '}', CGI.escape(element_type.to_s))

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
      return_type = opts[:debug_return_type] || 'ElementsEnvTypeRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.get_elements_type_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#get_elements_type_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Elements Configs
    # Lists all the elements_configs under the active organization.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [PaginatedResultElementsConfigRead]
    def list_elements_configs(proj_id, env_id, opts = {})
      data, _status_code, _headers = list_elements_configs_with_http_info(proj_id, env_id, opts)
      data
    end

    # List Elements Configs
    # Lists all the elements_configs under the active organization.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<(PaginatedResultElementsConfigRead, Integer, Hash)>] PaginatedResultElementsConfigRead data, response status code and response headers
    def list_elements_configs_with_http_info(proj_id, env_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.list_elements_configs ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.list_elements_configs"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.list_elements_configs"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ElementsConfigsApi.list_elements_configs, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ElementsConfigsApi.list_elements_configs, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ElementsConfigsApi.list_elements_configs, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/config'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'PaginatedResultElementsConfigRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.list_elements_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#list_elements_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Elements Config
    # Updates the elements_config.
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_update [ElementsConfigUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [ElementsConfigRead]
    def update_elements_config(elements_config_id, proj_id, env_id, elements_config_update, opts = {})
      data, _status_code, _headers = update_elements_config_with_http_info(elements_config_id, proj_id, env_id, elements_config_update, opts)
      data
    end

    # Update Elements Config
    # Updates the elements_config.
    # @param elements_config_id [String] Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;).
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_config_update [ElementsConfigUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElementsConfigRead, Integer, Hash)>] ElementsConfigRead data, response status code and response headers
    def update_elements_config_with_http_info(elements_config_id, proj_id, env_id, elements_config_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.update_elements_config ...'
      end
      # verify the required parameter 'elements_config_id' is set
      if @api_client.config.client_side_validation && elements_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'elements_config_id' when calling ElementsConfigsApi.update_elements_config"
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.update_elements_config"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.update_elements_config"
      end
      # verify the required parameter 'elements_config_update' is set
      if @api_client.config.client_side_validation && elements_config_update.nil?
        fail ArgumentError, "Missing the required parameter 'elements_config_update' when calling ElementsConfigsApi.update_elements_config"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/config/{elements_config_id}'.sub('{' + 'elements_config_id' + '}', CGI.escape(elements_config_id.to_s)).sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(elements_config_update)

      # return_type
      return_type = opts[:debug_return_type] || 'ElementsConfigRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.update_elements_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#update_elements_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Elements Type Permissions
    # @param element_type [ElementsType] Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \&quot;slug\&quot;).
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_env_type_update [ElementsEnvTypeUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [ElementsEnvTypeRead]
    def update_elements_type_permissions(element_type, proj_id, env_id, elements_env_type_update, opts = {})
      data, _status_code, _headers = update_elements_type_permissions_with_http_info(element_type, proj_id, env_id, elements_env_type_update, opts)
      data
    end

    # Update Elements Type Permissions
    # @param element_type [ElementsType] Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \&quot;slug\&quot;).
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param elements_env_type_update [ElementsEnvTypeUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElementsEnvTypeRead, Integer, Hash)>] ElementsEnvTypeRead data, response status code and response headers
    def update_elements_type_permissions_with_http_info(element_type, proj_id, env_id, elements_env_type_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElementsConfigsApi.update_elements_type_permissions ...'
      end
      # verify the required parameter 'element_type' is set
      if @api_client.config.client_side_validation && element_type.nil?
        fail ArgumentError, "Missing the required parameter 'element_type' when calling ElementsConfigsApi.update_elements_type_permissions"
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ElementsConfigsApi.update_elements_type_permissions"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ElementsConfigsApi.update_elements_type_permissions"
      end
      # verify the required parameter 'elements_env_type_update' is set
      if @api_client.config.client_side_validation && elements_env_type_update.nil?
        fail ArgumentError, "Missing the required parameter 'elements_env_type_update' when calling ElementsConfigsApi.update_elements_type_permissions"
      end
      # resource path
      local_var_path = '/v2/elements/{proj_id}/{env_id}/{element_type}'.sub('{' + 'element_type' + '}', CGI.escape(element_type.to_s)).sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(elements_env_type_update)

      # return_type
      return_type = opts[:debug_return_type] || 'ElementsEnvTypeRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ElementsConfigsApi.update_elements_type_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElementsConfigsApi#update_elements_type_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
