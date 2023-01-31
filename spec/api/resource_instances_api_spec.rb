=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ResourceInstancesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResourceInstancesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ResourceInstancesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourceInstancesApi' do
    it 'should create an instance of ResourceInstancesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ResourceInstancesApi)
    end
  end

  # unit tests for create_resource_instance
  # Create Resource Instance
  # Creates a new instance inside the Permit.io system.  If the instance is already created: will return 200 instead of 201, and will return the existing instance object in the response body.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param resource_instance_create 
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstanceRead]
  describe 'create_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_resource_instance
  # Delete Resource Instance
  # Deletes the instance and all its related data.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param instance_id Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_resource_instance
  # Get Resource Instance
  # Gets a instance, if such instance exists. Otherwise returns 404.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param instance_id Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstanceRead]
  describe 'get_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_resource_instances
  # List Resource Instances
  # Lists all the resource instances defined within an environment.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [Array<ResourceInstanceRead>]
  describe 'list_resource_instances test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_resource_instance
  # Update Resource Instance
  # Partially updates the instance definition. Fields that will be provided will be completely overwritten.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param instance_id Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;).
  # @param resource_instance_update 
  # @param [Hash] opts the optional parameters
  # @return [ResourceInstanceRead]
  describe 'update_resource_instance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
