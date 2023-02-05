require_relative 'base'

class UsersApi < PermitBaseApi
  def initialize(client, config, logger)
    super
  end

  def get(user_key)
    lazy_load_context
    data = @client.get_user(config.context.project_id, config.context.environment_id, user_key)
    data
  end


  def sync_user(user)
    lazy_load_context
    raise KeyError.new("Required UserCreate or hash object") if user.is_a?(String)
    user_key = user.is_a?(Hash) ? user.delete(:key) : user.key
    raise KeyError.new("required 'key' in input dictionary") if user_key.nil?

    # check if the user key already exists
    logger.info("checking if user '#{user_key}' already exists")
    begin
      user_to_update = @client.get_user(config.context.project_id, config.context.environment_id, user_key)
    rescue OpenapiClient::ApiError => e
      if e.code == 404
        # if the user does not exist, create it
        logger.info("user does not exist, creating it...")
        user_create = user.is_a?(Hash) ? OpenapiClient::UserCreate.new(user.merge("key" => user_key)) : user
        created_user = @client.create_user(config.context.project_id, config.context.environment_id, user_create)
        return created_user
      else
        raise e
      end
    end
    if user_to_update
      # if the user exists update it
      logger.info("user exists, updating it...")
      unless user.is_a?(Hash)
        user = user.instance_variables.map { |var| [var.to_s.delete("@"), user.instance_variable_get(var)] }.to_h.except("key")
      end
      if user.empty?
        raise "empty user object, nothing to update"
      end
      user_update =  OpenapiClient::UserUpdate.new(user)
      updated_user = @client.update_user(config.context.project_id, config.context.environment_id, user_key, user_update)
      return updated_user
    end
  end
end