=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  class ElementsType
    USER_MANAGEMENT = "user_management".freeze
    AUDIT_LOG = "audit_log".freeze
    APPROVAL_FLOW = "approval_flow".freeze

    def self.all_vars
      @all_vars ||= [USER_MANAGEMENT, AUDIT_LOG, APPROVAL_FLOW].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ElementsType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ElementsType"
    end
  end
end
