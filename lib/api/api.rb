require 'openapi_client'
require_relative 'users'
require_relative 'resources'
require_relative 'utils'
require_relative 'tenants'

class PermitApiClient
  attr_accessor :config, :logger, :client, :tenants, :resources, :roles, :users, :elements

  def initialize(config, logger)

    OpenapiClient.configure do |openapi_config|
      openapi_config.scheme = Utils.get_schema_from_url(config.api_url)
      openapi_config.host = Utils.get_host_from_url(config.api_url)
      openapi_config.access_token = config.token
    end
    @config = config
    @logger = logger
    @users = UsersApi.new(OpenapiClient::UsersApi.new, config, logger)
    @tenants = TenantsApi.new(OpenapiClient::TenantsApi.new, config, logger)
    @resources = ResourcesApi.new(OpenapiClient::ResourcesApi.new, config, logger)
    # @roles = RolesApi.new(OpenapiClient::RolesApi.new, config, logger)
    # @elements = ElementsApi.new(OpenapiClient::ElementsConfigsApi.new, config, logger)
  end
end
