class PermitConfig
  #
  # This class is used to configure the Permit SDK. It is used to set the base url of the PDP and the api key.
  #
  # Example:
  #
  # ```ruby
  # permit = Permit::Permit.new
  # permit.config.base_url = 'https://pdp.permit.io'
  # permit.config
  # ```
  attr_accessor :api_url, :token, :pdp_url, :context, :debug, :logger

  def initialize( token, api_url = DEFAULT_API_URL, pdp_url = DEFAULT_PDP_URL,context = nil, debug = false, logger = nil)
    @api_url = api_url
    @pdp_url = pdp_url
    @context = context
    @token = token
    @debug = debug
    @logger = logger
  end

end