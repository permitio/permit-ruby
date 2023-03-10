=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class ResourceAttributesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Resource Attribute
    # Creates a new attribute as part of the resource definition.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param resource_attribute_create [ResourceAttributeCreate] 
    # @param [Hash] opts the optional parameters
    # @return [ResourceAttributeRead]
    def create_resource_attribute(proj_id, env_id, resource_id, resource_attribute_create, opts = {})
      data, _status_code, _headers = create_resource_attribute_with_http_info(proj_id, env_id, resource_id, resource_attribute_create, opts)
      data
    end

    # Create Resource Attribute
    # Creates a new attribute as part of the resource definition.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param resource_attribute_create [ResourceAttributeCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceAttributeRead, Integer, Hash)>] ResourceAttributeRead data, response status code and response headers
    def create_resource_attribute_with_http_info(proj_id, env_id, resource_id, resource_attribute_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceAttributesApi.create_resource_attribute ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceAttributesApi.create_resource_attribute"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceAttributesApi.create_resource_attribute"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ResourceAttributesApi.create_resource_attribute"
      end
      # verify the required parameter 'resource_attribute_create' is set
      if @api_client.config.client_side_validation && resource_attribute_create.nil?
        fail ArgumentError, "Missing the required parameter 'resource_attribute_create' when calling ResourceAttributesApi.create_resource_attribute"
      end
      # resource path
      local_var_path = '/v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resource_attribute_create)

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceAttributeRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceAttributesApi.create_resource_attribute",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceAttributesApi#create_resource_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Resource Attribute
    # Deletes the attribute and all its related data.  Note: If the attribute is used by policies, removing it will cause the attribute to evaluate as `undefined`.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param attribute_id [String] Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [nil]
    def delete_resource_attribute(proj_id, env_id, resource_id, attribute_id, opts = {})
      delete_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, opts)
      nil
    end

    # Delete Resource Attribute
    # Deletes the attribute and all its related data.  Note: If the attribute is used by policies, removing it will cause the attribute to evaluate as &#x60;undefined&#x60;.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param attribute_id [String] Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceAttributesApi.delete_resource_attribute ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceAttributesApi.delete_resource_attribute"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceAttributesApi.delete_resource_attribute"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ResourceAttributesApi.delete_resource_attribute"
      end
      # verify the required parameter 'attribute_id' is set
      if @api_client.config.client_side_validation && attribute_id.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_id' when calling ResourceAttributesApi.delete_resource_attribute"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ResourceAttributesApi.delete_resource_attribute, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ResourceAttributesApi.delete_resource_attribute, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ResourceAttributesApi.delete_resource_attribute, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s)).sub('{' + 'attribute_id' + '}', CGI.escape(attribute_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceAttributesApi.delete_resource_attribute",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceAttributesApi#delete_resource_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Resource Attribute
    # Gets a single attribute defined on the resource, if such attribute exists.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param attribute_id [String] Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [ResourceAttributeRead]
    def get_resource_attribute(proj_id, env_id, resource_id, attribute_id, opts = {})
      data, _status_code, _headers = get_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, opts)
      data
    end

    # Get Resource Attribute
    # Gets a single attribute defined on the resource, if such attribute exists.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param attribute_id [String] Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceAttributeRead, Integer, Hash)>] ResourceAttributeRead data, response status code and response headers
    def get_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceAttributesApi.get_resource_attribute ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceAttributesApi.get_resource_attribute"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceAttributesApi.get_resource_attribute"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ResourceAttributesApi.get_resource_attribute"
      end
      # verify the required parameter 'attribute_id' is set
      if @api_client.config.client_side_validation && attribute_id.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_id' when calling ResourceAttributesApi.get_resource_attribute"
      end
      # resource path
      local_var_path = '/v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s)).sub('{' + 'attribute_id' + '}', CGI.escape(attribute_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ResourceAttributeRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceAttributesApi.get_resource_attribute",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceAttributesApi#get_resource_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Resource Attributes
    # Lists all the attributes defined on the resource.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<ResourceAttributeRead>]
    def list_resource_attributes(proj_id, env_id, resource_id, opts = {})
      data, _status_code, _headers = list_resource_attributes_with_http_info(proj_id, env_id, resource_id, opts)
      data
    end

    # List Resource Attributes
    # Lists all the attributes defined on the resource.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number of the results to fetch, starting at 1. (default to 1)
    # @option opts [Integer] :per_page The number of results per page (max 100). (default to 30)
    # @return [Array<(Array<ResourceAttributeRead>, Integer, Hash)>] Array<ResourceAttributeRead> data, response status code and response headers
    def list_resource_attributes_with_http_info(proj_id, env_id, resource_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceAttributesApi.list_resource_attributes ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceAttributesApi.list_resource_attributes"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceAttributesApi.list_resource_attributes"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ResourceAttributesApi.list_resource_attributes"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling ResourceAttributesApi.list_resource_attributes, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ResourceAttributesApi.list_resource_attributes, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling ResourceAttributesApi.list_resource_attributes, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ResourceAttributeRead>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceAttributesApi.list_resource_attributes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceAttributesApi#list_resource_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Resource Attribute
    # Partially updates the attribute defined on a resource. Fields that will be provided will be completely overwritten.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param attribute_id [String] Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
    # @param resource_attribute_update [ResourceAttributeUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [ResourceAttributeRead]
    def update_resource_attribute(proj_id, env_id, resource_id, attribute_id, resource_attribute_update, opts = {})
      data, _status_code, _headers = update_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, resource_attribute_update, opts)
      data
    end

    # Update Resource Attribute
    # Partially updates the attribute defined on a resource. Fields that will be provided will be completely overwritten.
    # @param proj_id [String] Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
    # @param env_id [String] Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
    # @param resource_id [String] Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
    # @param attribute_id [String] Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
    # @param resource_attribute_update [ResourceAttributeUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceAttributeRead, Integer, Hash)>] ResourceAttributeRead data, response status code and response headers
    def update_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, resource_attribute_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceAttributesApi.update_resource_attribute ...'
      end
      # verify the required parameter 'proj_id' is set
      if @api_client.config.client_side_validation && proj_id.nil?
        fail ArgumentError, "Missing the required parameter 'proj_id' when calling ResourceAttributesApi.update_resource_attribute"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling ResourceAttributesApi.update_resource_attribute"
      end
      # verify the required parameter 'resource_id' is set
      if @api_client.config.client_side_validation && resource_id.nil?
        fail ArgumentError, "Missing the required parameter 'resource_id' when calling ResourceAttributesApi.update_resource_attribute"
      end
      # verify the required parameter 'attribute_id' is set
      if @api_client.config.client_side_validation && attribute_id.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_id' when calling ResourceAttributesApi.update_resource_attribute"
      end
      # verify the required parameter 'resource_attribute_update' is set
      if @api_client.config.client_side_validation && resource_attribute_update.nil?
        fail ArgumentError, "Missing the required parameter 'resource_attribute_update' when calling ResourceAttributesApi.update_resource_attribute"
      end
      # resource path
      local_var_path = '/v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id}'.sub('{' + 'proj_id' + '}', CGI.escape(proj_id.to_s)).sub('{' + 'env_id' + '}', CGI.escape(env_id.to_s)).sub('{' + 'resource_id' + '}', CGI.escape(resource_id.to_s)).sub('{' + 'attribute_id' + '}', CGI.escape(attribute_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resource_attribute_update)

      # return_type
      return_type = opts[:debug_return_type] || 'ResourceAttributeRead'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ResourceAttributesApi.update_resource_attribute",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceAttributesApi#update_resource_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
