require_relative 'base'

class ResourcesApi < PermitBaseApi
  def initialize(client, config, logger)
    super
  end

  def get(resource_key)

    data = @client.get_tenant(config.context.project, config.context.project, resource_key)
    data
  end
end