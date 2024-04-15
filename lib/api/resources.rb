require_relative 'base'

class ResourcesApi < PermitBaseApi
  def initialize(client, config, logger)
    super
  end

  def get(resource_key)
    lazy_load_context
    data = @client.get_resource(config.context.project, config.context.project, resource_key)
    data
  end
end