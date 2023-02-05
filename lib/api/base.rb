
class PermitBaseApi
  attr_accessor :client, :config, :logger

  def lazy_load_context
    # If the instance config context is nil, we need to load it from the server
    OpenapiClient.configure do |openapi_config|
      openapi_config.scheme = Utils.get_schema_from_url(config.api_url)
      openapi_config.host = Utils.get_host_from_url(config.api_url)
      openapi_config.access_token = config.token
      openapi_config.server_operation_index = {}
      openapi_config.server_index = nil
    end
    client = OpenapiClient::APIKeysApi.new
    if @config.context.nil?
      @config.context = client.get_api_key_scope
    end
  end

  def initialize(client, config, logger)
    @logger = logger
    @config = config
    @client = client
  end

end