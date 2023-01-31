=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::RoleAssignmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RoleAssignmentsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::RoleAssignmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RoleAssignmentsApi' do
    it 'should create an instance of RoleAssignmentsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::RoleAssignmentsApi)
    end
  end

  # unit tests for assign_role
  # Assign Role
  # Assigns a role to a user within a tenant.  The tenant defines the scope of the assignment. In other words, the role is effective only within the tenant.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param role_assignment_create 
  # @param [Hash] opts the optional parameters
  # @return [RoleAssignmentRead]
  describe 'assign_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_role_assignments
  # List Role Assignments
  # Lists the role assignments defined within an environment.  - If the &#x60;user&#x60; filter is present, will only return the role assignments of that user. - If the &#x60;tenant&#x60; filter is present, will only return the role assignments in that tenant. - If the &#x60;role&#x60; filter is present, will only return role assignments that are granting that role.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user optional user filter, will only return role assignments granted to this user.
  # @option opts [String] :role optional role filter, will only return role assignments granting this role.
  # @option opts [String] :tenant optional tenant filter, will only return role assignments granted in that tenant.
  # @option opts [Integer] :page Page number of the results to fetch, starting at 1.
  # @option opts [Integer] :per_page The number of results per page (max 100).
  # @return [Array<RoleAssignmentRead>]
  describe 'list_role_assignments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unassign_role
  # Unassign Role
  # Unassigns a user role within a tenant.  The tenant defines the scope of the assignment. In other words, the role is effective only within the tenant.  If the role is not actually assigned, will return 404.
  # @param proj_id Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;).
  # @param env_id Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;).
  # @param role_assignment_remove 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'unassign_role test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
