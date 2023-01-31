=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ResourceAttributesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResourceAttributesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ResourceAttributesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourceAttributesApi' do
    it 'should create an instance of ResourceAttributesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ResourceAttributesApi)
    end
  end

  # unit tests for create_resource_attribute
  # Create Resource Attribute
  # Creates a new attribute as part of the resource definition.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_id Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
  # @param resource_attribute_create 
  # @param [Hash] opts the optional parameters
  # @return [ResourceAttributeRead]
  describe 'create_resource_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_resource_attribute
  # Delete Resource Attribute
  # Deletes the attribute and all its related data.  Note: If the attribute is used by policies, removing it will cause the attribute to evaluate as &#x60;undefined&#x60;.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_id Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
  # @param attribute_id Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [nil]
  describe 'delete_resource_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource_attribute
  # Get Resource Attribute
  # Gets a single attribute defined on the resource, if such attribute exists.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_id Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
  # @param attribute_id Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @return [ResourceAttributeRead]
  describe 'get_resource_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_resource_attributes
  # List Resource Attributes
  # Lists all the attributes defined on the resource.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_id Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [Array<ResourceAttributeRead>]
  describe 'list_resource_attributes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_resource_attribute
  # Update Resource Attribute
  # Partially updates the attribute defined on a resource. Fields that will be provided will be completely overwritten.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_id Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;).
  # @param attribute_id Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
  # @param resource_attribute_update 
  # @param [Hash] opts the optional parameters
  # @return [ResourceAttributeRead]
  describe 'update_resource_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
