require_relative 'base'
require_relative '../openapi_client/api/authentication_api'
class ElementsApi < PermitBaseApi
  def initialize(client, config, logger)
    super
  end

  def login_as(user_id, tenant_id)
    login_input = OpenapiClient::UserLoginRequestInput.new({:user_id => user_id, :tenant_id => tenant_id})
    data = @client.elements_login_as(login_input)
    data
  end
end