=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::UserAttributesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserAttributesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::UserAttributesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserAttributesApi' do
    it 'should create an instance of UserAttributesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::UserAttributesApi)
    end
  end

  # unit tests for create_user_attribute
  # Create User Attribute
  # Creates a new attribute for the User resource.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_attribute_create 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource_id 
  # @return [ResourceAttributeRead]
  describe 'create_user_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_attribute
  # Delete User Attribute
  # Deletes the attribute and all its related data.  Note: If the attribute is used by policies, removing it will cause the attribute to evaluate as &#x60;undefined&#x60;.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param attribute_id Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource_id 
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [nil]
  describe 'delete_user_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_attribute
  # Get User Attribute
  # Gets a single attribute defined on the User resource, if such attribute exists.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param attribute_id Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource_id 
  # @return [ResourceAttributeRead]
  describe 'get_user_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_attributes
  # List User Attributes
  # Lists all the attributes defined on the User resource.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource_id 
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [Array<ResourceAttributeRead>]
  describe 'list_user_attributes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_attribute
  # Update User Attribute
  # Partially updates the attribute defined on the User resource. Fields that will be provided will be completely overwritten.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param attribute_id Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;).
  # @param resource_attribute_update 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource_id 
  # @return [ResourceAttributeRead]
  describe 'update_user_attribute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
