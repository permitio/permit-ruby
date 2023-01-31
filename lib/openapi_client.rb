=begin
#Permit.io API

# Authorization as a service 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/api_key_create'
require 'openapi_client/models/api_key_owner_type'
require 'openapi_client/models/api_key_read'
require 'openapi_client/models/api_key_scope_read'
require 'openapi_client/models/action_block_editable'
require 'openapi_client/models/action_block_read'
require 'openapi_client/models/action_object'
require 'openapi_client/models/actor'
require 'openapi_client/models/add_role_permissions'
require 'openapi_client/models/attribute_block_editable'
require 'openapi_client/models/attribute_block_read'
require 'openapi_client/models/attribute_type'
require 'openapi_client/models/attributes'
require 'openapi_client/models/audit_log'
require 'openapi_client/models/audit_log_objects'
require 'openapi_client/models/authn_me_api_key_read'
require 'openapi_client/models/authn_me_member_read'
require 'openapi_client/models/authn_me_read'
require 'openapi_client/models/authn_me_user_read'
require 'openapi_client/models/condition_set_create'
require 'openapi_client/models/condition_set_read'
require 'openapi_client/models/condition_set_rule_create'
require 'openapi_client/models/condition_set_rule_read'
require 'openapi_client/models/condition_set_rule_remove'
require 'openapi_client/models/condition_set_type'
require 'openapi_client/models/condition_set_update'
require 'openapi_client/models/data_source_config'
require 'openapi_client/models/data_source_entry'
require 'openapi_client/models/detailed_audit_log'
require 'openapi_client/models/dev_login'
require 'openapi_client/models/dummy_engine_model'
require 'openapi_client/models/elements_config_create'
require 'openapi_client/models/elements_config_read'
require 'openapi_client/models/elements_config_runtime_read'
require 'openapi_client/models/elements_config_update'
require 'openapi_client/models/elements_env_type_read'
require 'openapi_client/models/elements_env_type_update'
require 'openapi_client/models/elements_permission_level'
require 'openapi_client/models/elements_role_read'
require 'openapi_client/models/elements_type'
require 'openapi_client/models/elements_user_create'
require 'openapi_client/models/elements_user_role_create'
require 'openapi_client/models/elements_user_role_remove'
require 'openapi_client/models/embedded_login_request_output'
require 'openapi_client/models/engine'
require 'openapi_client/models/environment_create'
require 'openapi_client/models/environment_object'
require 'openapi_client/models/environment_read'
require 'openapi_client/models/environment_stats'
require 'openapi_client/models/environment_update'
require 'openapi_client/models/failed_invite'
require 'openapi_client/models/full_data'
require 'openapi_client/models/http_validation_error'
require 'openapi_client/models/identity_read'
require 'openapi_client/models/invite_attempt_result'
require 'openapi_client/models/invite_create'
require 'openapi_client/models/invite_read'
require 'openapi_client/models/invite_status'
require 'openapi_client/models/labels'
require 'openapi_client/models/language_instructions'
require 'openapi_client/models/location_inner'
require 'openapi_client/models/login_result'
require 'openapi_client/models/member_access_level'
require 'openapi_client/models/member_access_obj'
require 'openapi_client/models/multi_invite_result'
require 'openapi_client/models/opa_decision_log'
require 'openapi_client/models/opa_engine_decision_log'
require 'openapi_client/models/opal_client'
require 'openapi_client/models/opa_labels'
require 'openapi_client/models/opa_metrics'
require 'openapi_client/models/onboarding_step'
require 'openapi_client/models/org_member_read'
require 'openapi_client/models/org_member_update'
require 'openapi_client/models/organization_create'
require 'openapi_client/models/organization_object'
require 'openapi_client/models/organization_read'
require 'openapi_client/models/organization_read_with_api_key'
require 'openapi_client/models/organization_update'
require 'openapi_client/models/pdp_config_object'
require 'openapi_client/models/pdp_config_read'
require 'openapi_client/models/pdp_context'
require 'openapi_client/models/pdp_state'
require 'openapi_client/models/pdp_state_update'
require 'openapi_client/models/paginated_result_api_key_read'
require 'openapi_client/models/paginated_result_audit_log'
require 'openapi_client/models/paginated_result_elements_config_read'
require 'openapi_client/models/paginated_result_opa_decision_log'
require 'openapi_client/models/paginated_result_user_read'
require 'openapi_client/models/pdp'
require 'openapi_client/models/pdp_config_object'
require 'openapi_client/models/pdp_values'
require 'openapi_client/models/permission_level_role_read'
require 'openapi_client/models/policy_repo_create'
require 'openapi_client/models/policy_repo_read'
require 'openapi_client/models/policy_repo_status'
require 'openapi_client/models/programming_language'
require 'openapi_client/models/project_create'
require 'openapi_client/models/project_object'
require 'openapi_client/models/project_read'
require 'openapi_client/models/project_update'
require 'openapi_client/models/raw_data'
require 'openapi_client/models/relationship_tuple_object'
require 'openapi_client/models/remote_config'
require 'openapi_client/models/remove_role_permissions'
require 'openapi_client/models/resource_action_create'
require 'openapi_client/models/resource_action_read'
require 'openapi_client/models/resource_action_update'
require 'openapi_client/models/resource_attribute_create'
require 'openapi_client/models/resource_attribute_read'
require 'openapi_client/models/resource_attribute_update'
require 'openapi_client/models/resource_attributes'
require 'openapi_client/models/resource_create'
require 'openapi_client/models/resource_id'
require 'openapi_client/models/resource_instance_create'
require 'openapi_client/models/resource_instance_read'
require 'openapi_client/models/resource_instance_update'
require 'openapi_client/models/resource_read'
require 'openapi_client/models/resource_replace'
require 'openapi_client/models/resource_role_create'
require 'openapi_client/models/resource_role_read'
require 'openapi_client/models/resource_role_update'
require 'openapi_client/models/resource_type_object'
require 'openapi_client/models/resource_update'
require 'openapi_client/models/role_assignment_create'
require 'openapi_client/models/role_assignment_read'
require 'openapi_client/models/role_assignment_remove'
require 'openapi_client/models/role_block'
require 'openapi_client/models/role_create'
require 'openapi_client/models/role_data'
require 'openapi_client/models/role_read'
require 'openapi_client/models/role_update'
require 'openapi_client/models/ssh_auth_data'
require 'openapi_client/models/settings'
require 'openapi_client/models/statistics'
require 'openapi_client/models/tenant_create'
require 'openapi_client/models/tenant_object'
require 'openapi_client/models/tenant_read'
require 'openapi_client/models/tenant_update'
require 'openapi_client/models/user_create'
require 'openapi_client/models/user_data'
require 'openapi_client/models/user_login_request_input'
require 'openapi_client/models/user_object'
require 'openapi_client/models/user_read'
require 'openapi_client/models/user_role'
require 'openapi_client/models/user_role_create'
require 'openapi_client/models/user_role_remove'
require 'openapi_client/models/user_update'
require 'openapi_client/models/validation_error'
require 'openapi_client/models/webhook_create'
require 'openapi_client/models/webhook_read'
require 'openapi_client/models/webhook_update'

# APIs
require 'openapi_client/api/api_keys_api'
require 'openapi_client/api/audit_elements_data_api'
require 'openapi_client/api/audit_logs_api'
require 'openapi_client/api/authentication_api'
require 'openapi_client/api/condition_set_rules_api'
require 'openapi_client/api/condition_sets_api'
require 'openapi_client/api/decision_logs_api'
require 'openapi_client/api/decision_logs_ingress_api'
require 'openapi_client/api/default_api'
require 'openapi_client/api/elements_configs_api'
require 'openapi_client/api/environments_api'
require 'openapi_client/api/instructions_api'
require 'openapi_client/api/members_api'
require 'openapi_client/api/opal_data_api'
require 'openapi_client/api/organizations_api'
require 'openapi_client/api/policy_api'
require 'openapi_client/api/policy_decision_points_api'
require 'openapi_client/api/policy_git_repositories_api'
require 'openapi_client/api/projects_api'
require 'openapi_client/api/resource_actions_api'
require 'openapi_client/api/resource_attributes_api'
require 'openapi_client/api/resource_instances_api'
require 'openapi_client/api/resource_roles_api'
require 'openapi_client/api/resources_api'
require 'openapi_client/api/role_assignments_api'
require 'openapi_client/api/roles_api'
require 'openapi_client/api/tenants_api'
require 'openapi_client/api/user_attributes_api'
require 'openapi_client/api/users_api'
require 'openapi_client/api/users_elements_data_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
