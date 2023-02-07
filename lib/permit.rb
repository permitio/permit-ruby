require 'Logger'
require 'net/http'
require_relative 'config'
require_relative 'api/api'

class Permit
  attr_accessor :config, :logger, :api, :elements, :enforcement
  DEFAULT_API_URL = 'https://api.permit.io'.freeze
  DEFAULT_PDP_URL = 'http://localhost:7766'.freeze
  DEFAULT_TENANT = "default"

  def initialize(token, pdp_url = DEFAULT_PDP_URL, api_url = DEFAULT_API_URL, debug = false, logger = Logger.new(STDOUT))
    @config = PermitConfig.new(token, api_url, pdp_url, nil, debug, logger)
    @api = PermitApiClient.new(@config, logger)
    @elements = @api.elements
    # @enforcement = PermitEnforcer.new
  end

  def check(user, action, resource, context = {})
    normalized_user = if user.is_a?(String)
                        { key: user }
                      else
                        user
                      end
    normalized_resource = if resource.is_a?(String)
                            { type: resource.split(":").first, key: resource.split(":").last, tenant: DEFAULT_TENANT }
                          else
                            resource
                          end

    input = {
      user: normalized_user,
      action: action,
      resource: normalized_resource,
      context: context
    }
    uri = URI("#{self.config.pdp_url}/allowed")
    req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
    req['Authorization'] = "Bearer #{config.token}"
    req.body = input.to_json

    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.request(req)
    end


    if res.code != '200'
      raise "Permit SDK got unexpected status code: #{res.code}, please check your Permit SDK class init and PDP container are configured correctly. \nRead more about setting up the PDP at https://docs.permit.io/reference/SDKs/Ruby/quickstart_ruby"
    end

    content = JSON.parse(res.body)
    content["allow"]

  end

  def sync_user(user)
    self.api.users.sync_user(user)
  end
end