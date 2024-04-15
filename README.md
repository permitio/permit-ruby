![Ruby.png](imgs/Ruby.png)
# Permit Ruby SDK

OpenapiClient - the Ruby gem for the Permit.io API


Authorization as a service


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new
api_key_create = OpenapiClient::APIKeyCreate.new({organization_id: 'organization_id_example'}) # APIKeyCreate | 

begin
  #Create Api Key
  result = api_instance.create_api_key(api_key_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling APIKeysApi->create_api_key: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::APIKeysApi* | [**create_api_key**](docs/APIKeysApi.md#create_api_key) | **POST** /v2/api-key | Create Api Key
*OpenapiClient::APIKeysApi* | [**delete_api_key**](docs/APIKeysApi.md#delete_api_key) | **DELETE** /v2/api-key/{api_key_id} | Delete Api Key
*OpenapiClient::APIKeysApi* | [**get_api_key**](docs/APIKeysApi.md#get_api_key) | **GET** /v2/api-key/{api_key_id} | Get Api Key
*OpenapiClient::APIKeysApi* | [**get_api_key_scope**](docs/APIKeysApi.md#get_api_key_scope) | **GET** /v2/api-key/scope | Get Api Key Scope
*OpenapiClient::APIKeysApi* | [**get_environment_api_key**](docs/APIKeysApi.md#get_environment_api_key) | **GET** /v2/api-key/{proj_id}/{env_id} | Get Environment Api Key
*OpenapiClient::APIKeysApi* | [**list_api_keys**](docs/APIKeysApi.md#list_api_keys) | **GET** /v2/api-key | List Api Keys
*OpenapiClient::AuditElementsDataApi* | [**elements_list_audit_logs**](docs/AuditElementsDataApi.md#elements_list_audit_logs) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/audit_logs | List audit logs
*OpenapiClient::AuditLogsApi* | [**get_detailed_audit_log**](docs/AuditLogsApi.md#get_detailed_audit_log) | **GET** /v2/pdps/{proj_id}/{env_id}/audit_logs/{log_id} | Get detailed audit log
*OpenapiClient::AuditLogsApi* | [**list_audit_logs**](docs/AuditLogsApi.md#list_audit_logs) | **GET** /v2/pdps/{proj_id}/{env_id}/audit_logs | List Audit Logs
*OpenapiClient::AuthenticationApi* | [**dev_login**](docs/AuthenticationApi.md#dev_login) | **POST** /v2/auth/devlogin | (DEV MODE) Login
*OpenapiClient::AuthenticationApi* | [**elements_login_as**](docs/AuthenticationApi.md#elements_login_as) | **POST** /v2/auth/elements_login_as | Elements Login As
*OpenapiClient::AuthenticationApi* | [**login**](docs/AuthenticationApi.md#login) | **POST** /v2/auth/login | Login
*OpenapiClient::AuthenticationApi* | [**login_elements**](docs/AuthenticationApi.md#login_elements) | **GET** /v2/auth/login_elements | Login Elements
*OpenapiClient::AuthenticationApi* | [**logout_get**](docs/AuthenticationApi.md#logout_get) | **GET** /v2/auth/logout | Logout Get
*OpenapiClient::AuthenticationApi* | [**logout_post**](docs/AuthenticationApi.md#logout_post) | **POST** /v2/auth/logout | Logout Post
*OpenapiClient::AuthenticationApi* | [**me**](docs/AuthenticationApi.md#me) | **GET** /v2/auth/me | Me
*OpenapiClient::AuthenticationApi* | [**switch_organization**](docs/AuthenticationApi.md#switch_organization) | **POST** /v2/auth/switch_org/{org_id} | Switch Organization
*OpenapiClient::ConditionSetRulesApi* | [**assign_set_permissions**](docs/ConditionSetRulesApi.md#assign_set_permissions) | **POST** /v2/facts/{proj_id}/{env_id}/set_rules | Assign Set Permissions
*OpenapiClient::ConditionSetRulesApi* | [**list_set_permissions**](docs/ConditionSetRulesApi.md#list_set_permissions) | **GET** /v2/facts/{proj_id}/{env_id}/set_rules | List Set Permissions
*OpenapiClient::ConditionSetRulesApi* | [**unassign_set_permissions**](docs/ConditionSetRulesApi.md#unassign_set_permissions) | **DELETE** /v2/facts/{proj_id}/{env_id}/set_rules | Unassign Set Permissions
*OpenapiClient::ConditionSetsApi* | [**create_condition_set**](docs/ConditionSetsApi.md#create_condition_set) | **POST** /v2/schema/{proj_id}/{env_id}/condition_sets | Create Condition Set
*OpenapiClient::ConditionSetsApi* | [**delete_condition_set**](docs/ConditionSetsApi.md#delete_condition_set) | **DELETE** /v2/schema/{proj_id}/{env_id}/condition_sets/{condition_set_id} | Delete Condition Set
*OpenapiClient::ConditionSetsApi* | [**get_condition_set**](docs/ConditionSetsApi.md#get_condition_set) | **GET** /v2/schema/{proj_id}/{env_id}/condition_sets/{condition_set_id} | Get Condition Set
*OpenapiClient::ConditionSetsApi* | [**list_condition_sets**](docs/ConditionSetsApi.md#list_condition_sets) | **GET** /v2/schema/{proj_id}/{env_id}/condition_sets | List Condition Sets
*OpenapiClient::ConditionSetsApi* | [**update_condition_set**](docs/ConditionSetsApi.md#update_condition_set) | **PATCH** /v2/schema/{proj_id}/{env_id}/condition_sets/{condition_set_id} | Update Condition Set
*OpenapiClient::DecisionLogsApi* | [**list_pdp_decision_logs**](docs/DecisionLogsApi.md#list_pdp_decision_logs) | **GET** /v2/pdps/{proj_id}/{env_id}/decision-logs/{pdp_id} | List PDP Decisions
*OpenapiClient::DecisionLogsIngressApi* | [**insert_opa_decision_logs**](docs/DecisionLogsIngressApi.md#insert_opa_decision_logs) | **POST** /v2/decision-logs/ingress | OPA Decision Logs Ingress
*OpenapiClient::DefaultApi* | [**dummy**](docs/DefaultApi.md#dummy) | **GET** /v2/stress/dummy | Dummy
*OpenapiClient::DefaultApi* | [**dummy_db**](docs/DefaultApi.md#dummy_db) | **GET** /v2/stress/db/dummy | Dummy Db
*OpenapiClient::DefaultApi* | [**get_organization_v2_stress_db_organization_get**](docs/DefaultApi.md#get_organization_v2_stress_db_organization_get) | **GET** /v2/stress/db/organization | Get Organization
*OpenapiClient::DefaultApi* | [**get_organization_with_authn**](docs/DefaultApi.md#get_organization_with_authn) | **GET** /v2/stress/db/organization_auth | Get Organization With Authn
*OpenapiClient::DefaultApi* | [**get_organization_with_authz**](docs/DefaultApi.md#get_organization_with_authz) | **GET** /v2/stress/db/organization_authz | Get Organization With Authz
*OpenapiClient::ElementsConfigsApi* | [**create_elements_config**](docs/ElementsConfigsApi.md#create_elements_config) | **POST** /v2/elements/{proj_id}/{env_id}/config | Create Elements Config
*OpenapiClient::ElementsConfigsApi* | [**delete_elements_config**](docs/ElementsConfigsApi.md#delete_elements_config) | **DELETE** /v2/elements/{proj_id}/{env_id}/{elements_config_id} | Delete Elements Config
*OpenapiClient::ElementsConfigsApi* | [**get_elements_config**](docs/ElementsConfigsApi.md#get_elements_config) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id} | Get Elements Config
*OpenapiClient::ElementsConfigsApi* | [**get_elements_config_runtime**](docs/ElementsConfigsApi.md#get_elements_config_runtime) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/runtime | Get Elements Config Runtime
*OpenapiClient::ElementsConfigsApi* | [**get_elements_type_config**](docs/ElementsConfigsApi.md#get_elements_type_config) | **GET** /v2/elements/{proj_id}/{env_id}/{element_type} | Get Elements Type Config
*OpenapiClient::ElementsConfigsApi* | [**list_elements_configs**](docs/ElementsConfigsApi.md#list_elements_configs) | **GET** /v2/elements/{proj_id}/{env_id}/config | List Elements Configs
*OpenapiClient::ElementsConfigsApi* | [**update_elements_config**](docs/ElementsConfigsApi.md#update_elements_config) | **PATCH** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id} | Update Elements Config
*OpenapiClient::ElementsConfigsApi* | [**update_elements_type_permissions**](docs/ElementsConfigsApi.md#update_elements_type_permissions) | **PATCH** /v2/elements/{proj_id}/{env_id}/{element_type} | Update Elements Type Permissions
*OpenapiClient::EnvironmentsApi* | [**create_environment**](docs/EnvironmentsApi.md#create_environment) | **POST** /v2/projects/{proj_id}/envs | Create Environment
*OpenapiClient::EnvironmentsApi* | [**delete_environment**](docs/EnvironmentsApi.md#delete_environment) | **DELETE** /v2/projects/{proj_id}/envs/{env_id} | Delete Environment
*OpenapiClient::EnvironmentsApi* | [**get_environment**](docs/EnvironmentsApi.md#get_environment) | **GET** /v2/projects/{proj_id}/envs/{env_id} | Get Environment
*OpenapiClient::EnvironmentsApi* | [**list_environments**](docs/EnvironmentsApi.md#list_environments) | **GET** /v2/projects/{proj_id}/envs | List Environments
*OpenapiClient::EnvironmentsApi* | [**stats_environments**](docs/EnvironmentsApi.md#stats_environments) | **GET** /v2/projects/{proj_id}/envs/{env_id}/stats | Stats Environments
*OpenapiClient::EnvironmentsApi* | [**update_environment**](docs/EnvironmentsApi.md#update_environment) | **PATCH** /v2/projects/{proj_id}/envs/{env_id} | Update Environment
*OpenapiClient::InstructionsApi* | [**list_language_instructions**](docs/InstructionsApi.md#list_language_instructions) | **GET** /v2/{proj_id}/{env_id}/get_instructions | List Language Instructions
*OpenapiClient::MembersApi* | [**delete_organization_member**](docs/MembersApi.md#delete_organization_member) | **DELETE** /v2/members/{member_id} | Delete Organization Member
*OpenapiClient::MembersApi* | [**get_authenticated_member**](docs/MembersApi.md#get_authenticated_member) | **GET** /v2/members/me | Get the authenticated account member
*OpenapiClient::MembersApi* | [**get_organization_member**](docs/MembersApi.md#get_organization_member) | **GET** /v2/members/{member_id} | Get Organization Member
*OpenapiClient::MembersApi* | [**list_organization_members**](docs/MembersApi.md#list_organization_members) | **GET** /v2/members | List Organization Members
*OpenapiClient::MembersApi* | [**update_organization_member**](docs/MembersApi.md#update_organization_member) | **PATCH** /v2/members/{member_id} | Update Organization Member
*OpenapiClient::OPALDataApi* | [**get_all_data**](docs/OPALDataApi.md#get_all_data) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id} | Get All Data
*OpenapiClient::OPALDataApi* | [**get_data_for_role**](docs/OPALDataApi.md#get_data_for_role) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id}/roles/{role_id} | Get Data For Role
*OpenapiClient::OPALDataApi* | [**get_data_for_set_rule**](docs/OPALDataApi.md#get_data_for_set_rule) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id}/condition_set_rules/{user_set_id}/{resource_set_id} | Get Data For Set Rule
*OpenapiClient::OPALDataApi* | [**get_data_for_user**](docs/OPALDataApi.md#get_data_for_user) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id}/users/{user_id} | Get Data For User
*OpenapiClient::OrganizationsApi* | [**cancel_invite**](docs/OrganizationsApi.md#cancel_invite) | **DELETE** /v2/orgs/{org_id}/invites/{invite_id} | Cancel Invite
*OpenapiClient::OrganizationsApi* | [**create_organization**](docs/OrganizationsApi.md#create_organization) | **POST** /v2/orgs | Create Organization
*OpenapiClient::OrganizationsApi* | [**delete_organization**](docs/OrganizationsApi.md#delete_organization) | **DELETE** /v2/orgs/{org_id} | Delete Organization
*OpenapiClient::OrganizationsApi* | [**get_active_organization**](docs/OrganizationsApi.md#get_active_organization) | **GET** /v2/orgs/active/org | Get Active Organization
*OpenapiClient::OrganizationsApi* | [**get_organization**](docs/OrganizationsApi.md#get_organization) | **GET** /v2/orgs/{org_id} | Get Organization
*OpenapiClient::OrganizationsApi* | [**invite_members_to_organization**](docs/OrganizationsApi.md#invite_members_to_organization) | **POST** /v2/orgs/{org_id}/invites | Invite Members To Organization
*OpenapiClient::OrganizationsApi* | [**list_organization_invites**](docs/OrganizationsApi.md#list_organization_invites) | **GET** /v2/orgs/{org_id}/invites | List Organization Invites
*OpenapiClient::OrganizationsApi* | [**list_organizations**](docs/OrganizationsApi.md#list_organizations) | **GET** /v2/orgs | List Organizations
*OpenapiClient::OrganizationsApi* | [**update_organization**](docs/OrganizationsApi.md#update_organization) | **PATCH** /v2/orgs/{org_id} | Update Organization
*OpenapiClient::PolicyApi* | [**get_opal_data_sources**](docs/PolicyApi.md#get_opal_data_sources) | **GET** /v2/opal/data/config | Get Opal Data Sources
*OpenapiClient::PolicyApi* | [**get_opal_data_sources_opal_data_config_get**](docs/PolicyApi.md#get_opal_data_sources_opal_data_config_get) | **GET** /opal/data/config | Get Opal Data Sources
*OpenapiClient::PolicyDecisionPointsApi* | [**get_authenticating_pdp_config_values**](docs/PolicyDecisionPointsApi.md#get_authenticating_pdp_config_values) | **POST** /v2/pdps/me/config | Get connected PDP configuration and push state
*OpenapiClient::PolicyDecisionPointsApi* | [**get_authenticating_pdp_config_values_legacy**](docs/PolicyDecisionPointsApi.md#get_authenticating_pdp_config_values_legacy) | **GET** /v2/pdps/me/config | Get connected PDP configuration
*OpenapiClient::PolicyDecisionPointsApi* | [**get_pdp_config_values**](docs/PolicyDecisionPointsApi.md#get_pdp_config_values) | **GET** /v2/pdps/{proj_id}/{env_id}/configs/{pdp_id}/values | Get PDP configuration
*OpenapiClient::PolicyDecisionPointsApi* | [**list_pdp_configs**](docs/PolicyDecisionPointsApi.md#list_pdp_configs) | **GET** /v2/pdps/{proj_id}/{env_id}/configs | List PDP configurations
*OpenapiClient::PolicyDecisionPointsApi* | [**rotate_pdp_api_key**](docs/PolicyDecisionPointsApi.md#rotate_pdp_api_key) | **POST** /v2/pdps/{proj_id}/{env_id}/configs/{pdp_id}/rotate-api-key | Rotate PDP API Key
*OpenapiClient::PolicyGitRepositoriesApi* | [**activate_policy_repo**](docs/PolicyGitRepositoriesApi.md#activate_policy_repo) | **PUT** /v2/projects/{proj_id}/repos/{repo_id}/activate | Activate Policy Repo
*OpenapiClient::PolicyGitRepositoriesApi* | [**create_policy_repo**](docs/PolicyGitRepositoriesApi.md#create_policy_repo) | **POST** /v2/projects/{proj_id}/repos | Create Policy Repo
*OpenapiClient::PolicyGitRepositoriesApi* | [**delete_policy_repo**](docs/PolicyGitRepositoriesApi.md#delete_policy_repo) | **DELETE** /v2/projects/{proj_id}/repos/{repo_id} | Delete Policy Repo
*OpenapiClient::PolicyGitRepositoriesApi* | [**disable_active_policy_repo**](docs/PolicyGitRepositoriesApi.md#disable_active_policy_repo) | **PUT** /v2/projects/{proj_id}/repos/disable | Disable Active Policy Repo
*OpenapiClient::PolicyGitRepositoriesApi* | [**get_active_policy_repo**](docs/PolicyGitRepositoriesApi.md#get_active_policy_repo) | **GET** /v2/projects/{proj_id}/repos/active | Get Active Policy Repo
*OpenapiClient::PolicyGitRepositoriesApi* | [**get_policy_repo**](docs/PolicyGitRepositoriesApi.md#get_policy_repo) | **GET** /v2/projects/{proj_id}/repos/{repo_id} | Get Policy Repo
*OpenapiClient::PolicyGitRepositoriesApi* | [**list_policy_repos**](docs/PolicyGitRepositoriesApi.md#list_policy_repos) | **GET** /v2/projects/{proj_id}/repos | List Policy Repos
*OpenapiClient::ProjectsApi* | [**create_project**](docs/ProjectsApi.md#create_project) | **POST** /v2/projects | Create Project
*OpenapiClient::ProjectsApi* | [**delete_project**](docs/ProjectsApi.md#delete_project) | **DELETE** /v2/projects/{proj_id} | Delete Project
*OpenapiClient::ProjectsApi* | [**get_project**](docs/ProjectsApi.md#get_project) | **GET** /v2/projects/{proj_id} | Get Project
*OpenapiClient::ProjectsApi* | [**list_projects**](docs/ProjectsApi.md#list_projects) | **GET** /v2/projects | List Projects
*OpenapiClient::ProjectsApi* | [**update_project**](docs/ProjectsApi.md#update_project) | **PATCH** /v2/projects/{proj_id} | Update Project
*OpenapiClient::ResourceActionsApi* | [**create_resource_action**](docs/ResourceActionsApi.md#create_resource_action) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions | Create Resource Action
*OpenapiClient::ResourceActionsApi* | [**delete_resource_action**](docs/ResourceActionsApi.md#delete_resource_action) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions/{action_id} | Delete Resource Action
*OpenapiClient::ResourceActionsApi* | [**get_resource_action**](docs/ResourceActionsApi.md#get_resource_action) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions/{action_id} | Get Resource Action
*OpenapiClient::ResourceActionsApi* | [**list_resource_actions**](docs/ResourceActionsApi.md#list_resource_actions) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions | List Resource Actions
*OpenapiClient::ResourceActionsApi* | [**update_resource_action**](docs/ResourceActionsApi.md#update_resource_action) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions/{action_id} | Update Resource Action
*OpenapiClient::ResourceAttributesApi* | [**create_resource_attribute**](docs/ResourceAttributesApi.md#create_resource_attribute) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes | Create Resource Attribute
*OpenapiClient::ResourceAttributesApi* | [**delete_resource_attribute**](docs/ResourceAttributesApi.md#delete_resource_attribute) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id} | Delete Resource Attribute
*OpenapiClient::ResourceAttributesApi* | [**get_resource_attribute**](docs/ResourceAttributesApi.md#get_resource_attribute) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id} | Get Resource Attribute
*OpenapiClient::ResourceAttributesApi* | [**list_resource_attributes**](docs/ResourceAttributesApi.md#list_resource_attributes) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes | List Resource Attributes
*OpenapiClient::ResourceAttributesApi* | [**update_resource_attribute**](docs/ResourceAttributesApi.md#update_resource_attribute) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id} | Update Resource Attribute
*OpenapiClient::ResourceInstancesApi* | [**create_resource_instance**](docs/ResourceInstancesApi.md#create_resource_instance) | **POST** /v2/facts/{proj_id}/{env_id}/resource_instances | Create Resource Instance
*OpenapiClient::ResourceInstancesApi* | [**delete_resource_instance**](docs/ResourceInstancesApi.md#delete_resource_instance) | **DELETE** /v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id} | Delete Resource Instance
*OpenapiClient::ResourceInstancesApi* | [**get_resource_instance**](docs/ResourceInstancesApi.md#get_resource_instance) | **GET** /v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id} | Get Resource Instance
*OpenapiClient::ResourceInstancesApi* | [**list_resource_instances**](docs/ResourceInstancesApi.md#list_resource_instances) | **GET** /v2/facts/{proj_id}/{env_id}/resource_instances | List Resource Instances
*OpenapiClient::ResourceInstancesApi* | [**update_resource_instance**](docs/ResourceInstancesApi.md#update_resource_instance) | **PATCH** /v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id} | Update Resource Instance
*OpenapiClient::ResourceRolesApi* | [**add_parent_resource_role**](docs/ResourceRolesApi.md#add_parent_resource_role) | **PUT** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/parents/{parent_role_id} | Add Parent Role
*OpenapiClient::ResourceRolesApi* | [**assign_permissions_to_resource_role**](docs/ResourceRolesApi.md#assign_permissions_to_resource_role) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/permissions | Assign Permissions to Role
*OpenapiClient::ResourceRolesApi* | [**create_resource_role**](docs/ResourceRolesApi.md#create_resource_role) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles | Create Resource Role
*OpenapiClient::ResourceRolesApi* | [**delete_resource_role**](docs/ResourceRolesApi.md#delete_resource_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id} | Delete Resource Role
*OpenapiClient::ResourceRolesApi* | [**get_resource_role**](docs/ResourceRolesApi.md#get_resource_role) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id} | Get Resource Role
*OpenapiClient::ResourceRolesApi* | [**list_resource_roles**](docs/ResourceRolesApi.md#list_resource_roles) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles | List Resource Roles
*OpenapiClient::ResourceRolesApi* | [**remove_parent_resource_role**](docs/ResourceRolesApi.md#remove_parent_resource_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/parents/{parent_role_id} | Remove Parent Role
*OpenapiClient::ResourceRolesApi* | [**remove_permissions_from_resource_role**](docs/ResourceRolesApi.md#remove_permissions_from_resource_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/permissions | Remove Permissions from Role
*OpenapiClient::ResourceRolesApi* | [**update_resource_role**](docs/ResourceRolesApi.md#update_resource_role) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id} | Update Resource Role
*OpenapiClient::ResourcesApi* | [**create_resource**](docs/ResourcesApi.md#create_resource) | **POST** /v2/schema/{proj_id}/{env_id}/resources | Create Resource
*OpenapiClient::ResourcesApi* | [**delete_resource**](docs/ResourcesApi.md#delete_resource) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Delete Resource
*OpenapiClient::ResourcesApi* | [**get_resource**](docs/ResourcesApi.md#get_resource) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Get Resource
*OpenapiClient::ResourcesApi* | [**list_resources**](docs/ResourcesApi.md#list_resources) | **GET** /v2/schema/{proj_id}/{env_id}/resources | List Resources
*OpenapiClient::ResourcesApi* | [**replace_resource**](docs/ResourcesApi.md#replace_resource) | **PUT** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Replace Resource
*OpenapiClient::ResourcesApi* | [**update_resource**](docs/ResourcesApi.md#update_resource) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Update Resource
*OpenapiClient::RoleAssignmentsApi* | [**assign_role**](docs/RoleAssignmentsApi.md#assign_role) | **POST** /v2/facts/{proj_id}/{env_id}/role_assignments | Assign Role
*OpenapiClient::RoleAssignmentsApi* | [**list_role_assignments**](docs/RoleAssignmentsApi.md#list_role_assignments) | **GET** /v2/facts/{proj_id}/{env_id}/role_assignments | List Role Assignments
*OpenapiClient::RoleAssignmentsApi* | [**unassign_role**](docs/RoleAssignmentsApi.md#unassign_role) | **DELETE** /v2/facts/{proj_id}/{env_id}/role_assignments | Unassign Role
*OpenapiClient::RolesApi* | [**add_parent_role**](docs/RolesApi.md#add_parent_role) | **PUT** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/parents/{parent_role_id} | Add Parent Role
*OpenapiClient::RolesApi* | [**assign_permissions_to_role**](docs/RolesApi.md#assign_permissions_to_role) | **POST** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/permissions | Assign Permissions To Role
*OpenapiClient::RolesApi* | [**create_role**](docs/RolesApi.md#create_role) | **POST** /v2/schema/{proj_id}/{env_id}/roles | Create Role
*OpenapiClient::RolesApi* | [**delete_role**](docs/RolesApi.md#delete_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/roles/{role_id} | Delete Role
*OpenapiClient::RolesApi* | [**get_role**](docs/RolesApi.md#get_role) | **GET** /v2/schema/{proj_id}/{env_id}/roles/{role_id} | Get Role
*OpenapiClient::RolesApi* | [**list_roles**](docs/RolesApi.md#list_roles) | **GET** /v2/schema/{proj_id}/{env_id}/roles | List Roles
*OpenapiClient::RolesApi* | [**remove_parent_role**](docs/RolesApi.md#remove_parent_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/parents/{parent_role_id} | Remove Parent Role
*OpenapiClient::RolesApi* | [**remove_permissions_from_role**](docs/RolesApi.md#remove_permissions_from_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/permissions | Remove Permissions From Role
*OpenapiClient::RolesApi* | [**update_role**](docs/RolesApi.md#update_role) | **PATCH** /v2/schema/{proj_id}/{env_id}/roles/{role_id} | Update Role
*OpenapiClient::TenantsApi* | [**create_tenant**](docs/TenantsApi.md#create_tenant) | **POST** /v2/facts/{proj_id}/{env_id}/tenants | Create Tenant
*OpenapiClient::TenantsApi* | [**delete_tenant**](docs/TenantsApi.md#delete_tenant) | **DELETE** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id} | Delete Tenant
*OpenapiClient::TenantsApi* | [**delete_tenant_user**](docs/TenantsApi.md#delete_tenant_user) | **DELETE** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id}/users/{user_id} | Delete Tenant User
*OpenapiClient::TenantsApi* | [**get_tenant**](docs/TenantsApi.md#get_tenant) | **GET** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id} | Get Tenant
*OpenapiClient::TenantsApi* | [**list_tenant_users**](docs/TenantsApi.md#list_tenant_users) | **GET** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id}/users | List Tenant Users
*OpenapiClient::TenantsApi* | [**list_tenants**](docs/TenantsApi.md#list_tenants) | **GET** /v2/facts/{proj_id}/{env_id}/tenants | List Tenants
*OpenapiClient::TenantsApi* | [**update_tenant**](docs/TenantsApi.md#update_tenant) | **PATCH** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id} | Update Tenant
*OpenapiClient::UserAttributesApi* | [**create_user_attribute**](docs/UserAttributesApi.md#create_user_attribute) | **POST** /v2/schema/{proj_id}/{env_id}/users/attributes | Create User Attribute
*OpenapiClient::UserAttributesApi* | [**delete_user_attribute**](docs/UserAttributesApi.md#delete_user_attribute) | **DELETE** /v2/schema/{proj_id}/{env_id}/users/attributes/{attribute_id} | Delete User Attribute
*OpenapiClient::UserAttributesApi* | [**get_user_attribute**](docs/UserAttributesApi.md#get_user_attribute) | **GET** /v2/schema/{proj_id}/{env_id}/users/attributes/{attribute_id} | Get User Attribute
*OpenapiClient::UserAttributesApi* | [**list_user_attributes**](docs/UserAttributesApi.md#list_user_attributes) | **GET** /v2/schema/{proj_id}/{env_id}/users/attributes | List User Attributes
*OpenapiClient::UserAttributesApi* | [**update_user_attribute**](docs/UserAttributesApi.md#update_user_attribute) | **PATCH** /v2/schema/{proj_id}/{env_id}/users/attributes/{attribute_id} | Update User Attribute
*OpenapiClient::UsersApi* | [**assign_role_to_user**](docs/UsersApi.md#assign_role_to_user) | **POST** /v2/facts/{proj_id}/{env_id}/users/{user_id}/roles | Assign Role To User
*OpenapiClient::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /v2/facts/{proj_id}/{env_id}/users | Create User
*OpenapiClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Delete User
*OpenapiClient::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Get User
*OpenapiClient::UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /v2/facts/{proj_id}/{env_id}/users | List Users
*OpenapiClient::UsersApi* | [**replace_user**](docs/UsersApi.md#replace_user) | **PUT** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Replace User
*OpenapiClient::UsersApi* | [**unassign_role_from_user**](docs/UsersApi.md#unassign_role_from_user) | **DELETE** /v2/facts/{proj_id}/{env_id}/users/{user_id}/roles | Unassign Role From User
*OpenapiClient::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PATCH** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Update User
*OpenapiClient::UsersElementsDataApi* | [**elements_assign_role_to_user**](docs/UsersElementsDataApi.md#elements_assign_role_to_user) | **POST** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users/{user_id}/roles | Assign role to user
*OpenapiClient::UsersElementsDataApi* | [**elements_create_user**](docs/UsersElementsDataApi.md#elements_create_user) | **POST** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users | Create user
*OpenapiClient::UsersElementsDataApi* | [**elements_delete_user**](docs/UsersElementsDataApi.md#elements_delete_user) | **DELETE** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users/{user_id} | Delete user
*OpenapiClient::UsersElementsDataApi* | [**elements_list_roles**](docs/UsersElementsDataApi.md#elements_list_roles) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/roles | List roles
*OpenapiClient::UsersElementsDataApi* | [**elements_list_users**](docs/UsersElementsDataApi.md#elements_list_users) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users | List users
*OpenapiClient::UsersElementsDataApi* | [**elements_unassign_role_from_user**](docs/UsersElementsDataApi.md#elements_unassign_role_from_user) | **DELETE** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users/{user_id}/roles | Unassign role from user
*OpenapiClient::UsersElementsDataApi* | [**set_config_active**](docs/UsersElementsDataApi.md#set_config_active) | **POST** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/active | Set Config Active


## Documentation for Models

 - [OpenapiClient::APIKeyCreate](docs/APIKeyCreate.md)
 - [OpenapiClient::APIKeyOwnerType](docs/APIKeyOwnerType.md)
 - [OpenapiClient::APIKeyRead](docs/APIKeyRead.md)
 - [OpenapiClient::APIKeyScopeRead](docs/APIKeyScopeRead.md)
 - [OpenapiClient::ActionBlockEditable](docs/ActionBlockEditable.md)
 - [OpenapiClient::ActionBlockRead](docs/ActionBlockRead.md)
 - [OpenapiClient::ActionObject](docs/ActionObject.md)
 - [OpenapiClient::Actor](docs/Actor.md)
 - [OpenapiClient::AddRolePermissions](docs/AddRolePermissions.md)
 - [OpenapiClient::AttributeBlockEditable](docs/AttributeBlockEditable.md)
 - [OpenapiClient::AttributeBlockRead](docs/AttributeBlockRead.md)
 - [OpenapiClient::AttributeType](docs/AttributeType.md)
 - [OpenapiClient::Attributes](docs/Attributes.md)
 - [OpenapiClient::AuditLog](docs/AuditLog.md)
 - [OpenapiClient::AuditLogObjects](docs/AuditLogObjects.md)
 - [OpenapiClient::AuthnMeAPIKeyRead](docs/AuthnMeAPIKeyRead.md)
 - [OpenapiClient::AuthnMeMemberRead](docs/AuthnMeMemberRead.md)
 - [OpenapiClient::AuthnMeRead](docs/AuthnMeRead.md)
 - [OpenapiClient::AuthnMeUserRead](docs/AuthnMeUserRead.md)
 - [OpenapiClient::ConditionSetCreate](docs/ConditionSetCreate.md)
 - [OpenapiClient::ConditionSetRead](docs/ConditionSetRead.md)
 - [OpenapiClient::ConditionSetRuleCreate](docs/ConditionSetRuleCreate.md)
 - [OpenapiClient::ConditionSetRuleRead](docs/ConditionSetRuleRead.md)
 - [OpenapiClient::ConditionSetRuleRemove](docs/ConditionSetRuleRemove.md)
 - [OpenapiClient::ConditionSetType](docs/ConditionSetType.md)
 - [OpenapiClient::ConditionSetUpdate](docs/ConditionSetUpdate.md)
 - [OpenapiClient::DataSourceConfig](docs/DataSourceConfig.md)
 - [OpenapiClient::DataSourceEntry](docs/DataSourceEntry.md)
 - [OpenapiClient::DetailedAuditLog](docs/DetailedAuditLog.md)
 - [OpenapiClient::DevLogin](docs/DevLogin.md)
 - [OpenapiClient::DummyEngineModel](docs/DummyEngineModel.md)
 - [OpenapiClient::ElementsConfigCreate](docs/ElementsConfigCreate.md)
 - [OpenapiClient::ElementsConfigRead](docs/ElementsConfigRead.md)
 - [OpenapiClient::ElementsConfigRuntimeRead](docs/ElementsConfigRuntimeRead.md)
 - [OpenapiClient::ElementsConfigUpdate](docs/ElementsConfigUpdate.md)
 - [OpenapiClient::ElementsEnvTypeRead](docs/ElementsEnvTypeRead.md)
 - [OpenapiClient::ElementsEnvTypeUpdate](docs/ElementsEnvTypeUpdate.md)
 - [OpenapiClient::ElementsPermissionLevel](docs/ElementsPermissionLevel.md)
 - [OpenapiClient::ElementsRoleRead](docs/ElementsRoleRead.md)
 - [OpenapiClient::ElementsType](docs/ElementsType.md)
 - [OpenapiClient::ElementsUserCreate](docs/ElementsUserCreate.md)
 - [OpenapiClient::ElementsUserRoleCreate](docs/ElementsUserRoleCreate.md)
 - [OpenapiClient::ElementsUserRoleRemove](docs/ElementsUserRoleRemove.md)
 - [OpenapiClient::EmbeddedLoginRequestOutput](docs/EmbeddedLoginRequestOutput.md)
 - [OpenapiClient::Engine](docs/Engine.md)
 - [OpenapiClient::EnvironmentCreate](docs/EnvironmentCreate.md)
 - [OpenapiClient::EnvironmentObject](docs/EnvironmentObject.md)
 - [OpenapiClient::EnvironmentRead](docs/EnvironmentRead.md)
 - [OpenapiClient::EnvironmentStats](docs/EnvironmentStats.md)
 - [OpenapiClient::EnvironmentUpdate](docs/EnvironmentUpdate.md)
 - [OpenapiClient::FailedInvite](docs/FailedInvite.md)
 - [OpenapiClient::FullData](docs/FullData.md)
 - [OpenapiClient::HTTPValidationError](docs/HTTPValidationError.md)
 - [OpenapiClient::IdentityRead](docs/IdentityRead.md)
 - [OpenapiClient::InviteAttemptResult](docs/InviteAttemptResult.md)
 - [OpenapiClient::InviteCreate](docs/InviteCreate.md)
 - [OpenapiClient::InviteRead](docs/InviteRead.md)
 - [OpenapiClient::InviteStatus](docs/InviteStatus.md)
 - [OpenapiClient::Labels](docs/Labels.md)
 - [OpenapiClient::LanguageInstructions](docs/LanguageInstructions.md)
 - [OpenapiClient::LocationInner](docs/LocationInner.md)
 - [OpenapiClient::LoginResult](docs/LoginResult.md)
 - [OpenapiClient::MemberAccessLevel](docs/MemberAccessLevel.md)
 - [OpenapiClient::MemberAccessObj](docs/MemberAccessObj.md)
 - [OpenapiClient::MultiInviteResult](docs/MultiInviteResult.md)
 - [OpenapiClient::OPADecisionLog](docs/OPADecisionLog.md)
 - [OpenapiClient::OPAEngineDecisionLog](docs/OPAEngineDecisionLog.md)
 - [OpenapiClient::OPALClient](docs/OPALClient.md)
 - [OpenapiClient::OPALabels](docs/OPALabels.md)
 - [OpenapiClient::OPAMetrics](docs/OPAMetrics.md)
 - [OpenapiClient::OnboardingStep](docs/OnboardingStep.md)
 - [OpenapiClient::OrgMemberRead](docs/OrgMemberRead.md)
 - [OpenapiClient::OrgMemberUpdate](docs/OrgMemberUpdate.md)
 - [OpenapiClient::OrganizationCreate](docs/OrganizationCreate.md)
 - [OpenapiClient::OrganizationObject](docs/OrganizationObject.md)
 - [OpenapiClient::OrganizationRead](docs/OrganizationRead.md)
 - [OpenapiClient::OrganizationReadWithAPIKey](docs/OrganizationReadWithAPIKey.md)
 - [OpenapiClient::OrganizationUpdate](docs/OrganizationUpdate.md)
 - [OpenapiClient::PDPConfigObject](docs/PDPConfigObject.md)
 - [OpenapiClient::PDPConfigRead](docs/PDPConfigRead.md)
 - [OpenapiClient::PDPContext](docs/PDPContext.md)
 - [OpenapiClient::PDPState](docs/PDPState.md)
 - [OpenapiClient::PDPStateUpdate](docs/PDPStateUpdate.md)
 - [OpenapiClient::PaginatedResultAPIKeyRead](docs/PaginatedResultAPIKeyRead.md)
 - [OpenapiClient::PaginatedResultAuditLog](docs/PaginatedResultAuditLog.md)
 - [OpenapiClient::PaginatedResultElementsConfigRead](docs/PaginatedResultElementsConfigRead.md)
 - [OpenapiClient::PaginatedResultOPADecisionLog](docs/PaginatedResultOPADecisionLog.md)
 - [OpenapiClient::PaginatedResultUserRead](docs/PaginatedResultUserRead.md)
 - [OpenapiClient::Pdp](docs/Pdp.md)
 - [OpenapiClient::PdpConfigObject](docs/PdpConfigObject.md)
 - [OpenapiClient::PdpValues](docs/PdpValues.md)
 - [OpenapiClient::PermissionLevelRoleRead](docs/PermissionLevelRoleRead.md)
 - [OpenapiClient::PolicyRepoCreate](docs/PolicyRepoCreate.md)
 - [OpenapiClient::PolicyRepoRead](docs/PolicyRepoRead.md)
 - [OpenapiClient::PolicyRepoStatus](docs/PolicyRepoStatus.md)
 - [OpenapiClient::ProgrammingLanguage](docs/ProgrammingLanguage.md)
 - [OpenapiClient::ProjectCreate](docs/ProjectCreate.md)
 - [OpenapiClient::ProjectObject](docs/ProjectObject.md)
 - [OpenapiClient::ProjectRead](docs/ProjectRead.md)
 - [OpenapiClient::ProjectUpdate](docs/ProjectUpdate.md)
 - [OpenapiClient::RawData](docs/RawData.md)
 - [OpenapiClient::RelationshipTupleObject](docs/RelationshipTupleObject.md)
 - [OpenapiClient::RemoteConfig](docs/RemoteConfig.md)
 - [OpenapiClient::RemoveRolePermissions](docs/RemoveRolePermissions.md)
 - [OpenapiClient::ResourceActionCreate](docs/ResourceActionCreate.md)
 - [OpenapiClient::ResourceActionRead](docs/ResourceActionRead.md)
 - [OpenapiClient::ResourceActionUpdate](docs/ResourceActionUpdate.md)
 - [OpenapiClient::ResourceAttributeCreate](docs/ResourceAttributeCreate.md)
 - [OpenapiClient::ResourceAttributeRead](docs/ResourceAttributeRead.md)
 - [OpenapiClient::ResourceAttributeUpdate](docs/ResourceAttributeUpdate.md)
 - [OpenapiClient::ResourceAttributes](docs/ResourceAttributes.md)
 - [OpenapiClient::ResourceCreate](docs/ResourceCreate.md)
 - [OpenapiClient::ResourceId](docs/ResourceId.md)
 - [OpenapiClient::ResourceInstanceCreate](docs/ResourceInstanceCreate.md)
 - [OpenapiClient::ResourceInstanceRead](docs/ResourceInstanceRead.md)
 - [OpenapiClient::ResourceInstanceUpdate](docs/ResourceInstanceUpdate.md)
 - [OpenapiClient::ResourceRead](docs/ResourceRead.md)
 - [OpenapiClient::ResourceReplace](docs/ResourceReplace.md)
 - [OpenapiClient::ResourceRoleCreate](docs/ResourceRoleCreate.md)
 - [OpenapiClient::ResourceRoleRead](docs/ResourceRoleRead.md)
 - [OpenapiClient::ResourceRoleUpdate](docs/ResourceRoleUpdate.md)
 - [OpenapiClient::ResourceTypeObject](docs/ResourceTypeObject.md)
 - [OpenapiClient::ResourceUpdate](docs/ResourceUpdate.md)
 - [OpenapiClient::RoleAssignmentCreate](docs/RoleAssignmentCreate.md)
 - [OpenapiClient::RoleAssignmentRead](docs/RoleAssignmentRead.md)
 - [OpenapiClient::RoleAssignmentRemove](docs/RoleAssignmentRemove.md)
 - [OpenapiClient::RoleBlock](docs/RoleBlock.md)
 - [OpenapiClient::RoleCreate](docs/RoleCreate.md)
 - [OpenapiClient::RoleData](docs/RoleData.md)
 - [OpenapiClient::RoleRead](docs/RoleRead.md)
 - [OpenapiClient::RoleUpdate](docs/RoleUpdate.md)
 - [OpenapiClient::SSHAuthData](docs/SSHAuthData.md)
 - [OpenapiClient::Settings](docs/Settings.md)
 - [OpenapiClient::Statistics](docs/Statistics.md)
 - [OpenapiClient::TenantCreate](docs/TenantCreate.md)
 - [OpenapiClient::TenantObject](docs/TenantObject.md)
 - [OpenapiClient::TenantRead](docs/TenantRead.md)
 - [OpenapiClient::TenantUpdate](docs/TenantUpdate.md)
 - [OpenapiClient::UserCreate](docs/UserCreate.md)
 - [OpenapiClient::UserData](docs/UserData.md)
 - [OpenapiClient::UserLoginRequestInput](docs/UserLoginRequestInput.md)
 - [OpenapiClient::UserObject](docs/UserObject.md)
 - [OpenapiClient::UserRead](docs/UserRead.md)
 - [OpenapiClient::UserRole](docs/UserRole.md)
 - [OpenapiClient::UserRoleCreate](docs/UserRoleCreate.md)
 - [OpenapiClient::UserRoleRemove](docs/UserRoleRemove.md)
 - [OpenapiClient::UserUpdate](docs/UserUpdate.md)
 - [OpenapiClient::ValidationError](docs/ValidationError.md)
 - [OpenapiClient::WebhookCreate](docs/WebhookCreate.md)
 - [OpenapiClient::WebhookRead](docs/WebhookRead.md)
 - [OpenapiClient::WebhookUpdate](docs/WebhookUpdate.md)


## Documentation for Authorization


### HTTPBearer

- **Type**: Bearer authentication (JWT)

