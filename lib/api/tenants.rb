require_relative 'base'
class TenantsApi < PermitBaseApi
  def initialize(client, config, logger)
    super
  end

  def get(tenant_key)
    lazy_load_context
    data = @client.get_tenant(config.context.project, config.context.project, tenant_key)
    data
  end
end