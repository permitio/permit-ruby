# OpenapiClient::InstructionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_language_instructions**](InstructionsApi.md#list_language_instructions) | **GET** /v2/{proj_id}/{env_id}/get_instructions | List Language Instructions |


## list_language_instructions

> <Array<LanguageInstructions>> list_language_instructions(proj_id, env_id)

List Language Instructions

Lists pending organization invites

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::InstructionsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # List Language Instructions
  result = api_instance.list_language_instructions(proj_id, env_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstructionsApi->list_language_instructions: #{e}"
end
```

#### Using the list_language_instructions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LanguageInstructions>>, Integer, Hash)> list_language_instructions_with_http_info(proj_id, env_id)

```ruby
begin
  # List Language Instructions
  data, status_code, headers = api_instance.list_language_instructions_with_http_info(proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LanguageInstructions>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InstructionsApi->list_language_instructions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**Array&lt;LanguageInstructions&gt;**](LanguageInstructions.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

