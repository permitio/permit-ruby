=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class ResourceInstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Resource Instance
    # Creates a new instance inside the Permit.io system.  If the instance is already created: will return 200 instead of 201, and will return the existing instance object in the response body.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_instance_create [ResourceInstanceCreate] 
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstanceRead]
    def create_resource_instance(proj_id, env_id, resource_instance_create, opts = {})
      data, _status_code, _headers = create_resource_instance_with_http_info(proj_id, env_id, resource_instance_create, opts)
      data
    end

    # Create Resource Instance
    # Creates a new instance inside the Permit.io system.  If the instance is already created: will return 200 instead of 201, and will return the existing instance object in the response body.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_instance_create [ResourceInstanceCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstanceRead, Integer, Hash)>] ResourceInstanceRead data, response status code and response headers
    def create_resource_instance_with_http_info(proj_id, env_id, resource_instance_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.create_resource_instance ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceInstancesApi.create_resource_instance"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceInstancesApi.create_resource_instance"
      end
      # verify the required parameter 'resource_instance_create' is set
      if @api_client.config.client_side_validation && resource_instance_create.nil?
        fail ArgumentError, "Missing the required parameter 'resource_instance_create' when calling ResourceInstancesApi.create_resource_instance"
      end
      # resource path
      local_var_path = '/v2/facts/{proj_id}/{env_id}/resource_instances'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resource_instance_create)

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstanceRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.create_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#create_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Resource Instance
    # Deletes the instance and all its related data.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param instance_id [String] Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_resource_instance(proj_id, env_id, instance_id, opts = {})
      delete_resource_instance_with_http_info(proj_id, env_id, instance_id, opts)
      nil
    end

    # Delete Resource Instance
    # Deletes the instance and all its related data.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param instance_id [String] Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_resource_instance_with_http_info(proj_id, env_id, instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.delete_resource_instance ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceInstancesApi.delete_resource_instance"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceInstancesApi.delete_resource_instance"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling ResourceInstancesApi.delete_resource_instance"
      end
      # resource path
      local_var_path = '/v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'instance_id' + '}', CGI.escape(instance_id.to_s))

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
        :operation => :"ResourceInstancesApi.delete_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#delete_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Resource Instance
    # Gets a instance, if such instance exists. Otherwise returns 404.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param instance_id [String] Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstanceRead]
    def get_resource_instance(proj_id, env_id, instance_id, opts = {})
      data, _status_code, _headers = get_resource_instance_with_http_info(proj_id, env_id, instance_id, opts)
      data
    end

    # Get Resource Instance
    # Gets a instance, if such instance exists. Otherwise returns 404.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param instance_id [String] Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstanceRead, Integer, Hash)>] ResourceInstanceRead data, response status code and response headers
    def get_resource_instance_with_http_info(proj_id, env_id, instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.get_resource_instance ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceInstancesApi.get_resource_instance"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceInstancesApi.get_resource_instance"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling ResourceInstancesApi.get_resource_instance"
      end
      # resource path
      local_var_path = '/v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'instance_id' + '}', CGI.escape(instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ResourceInstanceRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.get_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#get_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Resource Instances
    # Lists all the resource instances defined within an environment.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<ResourceInstanceRead>]
    def list_resource_instances(proj_id, env_id, opts = {})
      data, _status_code, _headers = list_resource_instances_with_http_info(proj_id, env_id, opts)
      data
    end

    # List Resource Instances
    # Lists all the resource instances defined within an environment.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<(Array<ResourceInstanceRead>, Integer, Hash)>] Array<ResourceInstanceRead> data, response status code and response headers
    def list_resource_instances_with_http_info(proj_id, env_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.list_resource_instances ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceInstancesApi.list_resource_instances"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceInstancesApi.list_resource_instances"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ResourceInstancesApi.list_resource_instances, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ResourceInstancesApi.list_resource_instances, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ResourceInstancesApi.list_resource_instances, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v2/facts/{proj_id}/{env_id}/resource_instances'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ResourceInstanceRead>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.list_resource_instances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#list_resource_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Resource Instance
    # Partially updates the instance definition. Fields that will be provided will be completely overwritten.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param instance_id [String] Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
    # @param resource_instance_update [ResourceInstanceUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstanceRead]
    def update_resource_instance(proj_id, env_id, instance_id, resource_instance_update, opts = {})
      data, _status_code, _headers = update_resource_instance_with_http_info(proj_id, env_id, instance_id, resource_instance_update, opts)
      data
    end

    # Update Resource Instance
    # Partially updates the instance definition. Fields that will be provided will be completely overwritten.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param instance_id [String] Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
    # @param resource_instance_update [ResourceInstanceUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstanceRead, Integer, Hash)>] ResourceInstanceRead data, response status code and response headers
    def update_resource_instance_with_http_info(proj_id, env_id, instance_id, resource_instance_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.update_resource_instance ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceInstancesApi.update_resource_instance"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceInstancesApi.update_resource_instance"
      end
      # verify the required parameter 'instance_id' is set
      if @api_client.config.client_side_validation && instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'instance_id' when calling ResourceInstancesApi.update_resource_instance"
      end
      # verify the required parameter 'resource_instance_update' is set
      if @api_client.config.client_side_validation && resource_instance_update.nil?
        fail ArgumentError, "Missing the required parameter 'resource_instance_update' when calling ResourceInstancesApi.update_resource_instance"
      end
      # resource path
      local_var_path = '/v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'instance_id' + '}', CGI.escape(instance_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resource_instance_update)

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceInstanceRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceInstancesApi.update_resource_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#update_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
