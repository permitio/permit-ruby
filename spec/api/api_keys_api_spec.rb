=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::APIKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'APIKeysApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::APIKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of APIKeysApi' do
    it 'should create an instance of APIKeysApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::APIKeysApi)
    end
  end

  # unit tests for create_api_key
  # Create Api Key
  # Creates a new api_key under the active organization.
  # @param api_key_create 
  # @param [Hash] opts the optional parameters
  # @return [APIKeyRead]
  describe 'create_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_api_key
  # Delete Api Key
  # Deletes the api_key and all its related data.
  # @param api_key_id The unique id of the API key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_key
  # Get Api Key
  # Gets a single api_key matching the given api_key_id, if such api_key exists.
  # @param api_key_id The unique id of the API key
  # @param [Hash] opts the optional parameters
  # @return [APIKeyRead]
  describe 'get_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_key_scope
  # Get Api Key Scope
  # @param [Hash] opts the optional parameters
  # @return [APIKeyScopeRead]
  describe 'get_api_key_scope test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_environment_api_key
  # Get Environment Api Key
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @return [APIKeyRead]
  describe 'get_environment_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_api_keys
  # List Api Keys
  # Lists all the api_keys under the active organization.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [PaginatedResultAPIKeyRead]
  describe 'list_api_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
