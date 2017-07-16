# EsiClient::OpportunitiesApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_opportunities**](OpportunitiesApi.md#get_characters_character_id_opportunities) | **GET** /characters/{character_id}/opportunities/ | Get a character&#39;s completed tasks
[**get_opportunities_groups**](OpportunitiesApi.md#get_opportunities_groups) | **GET** /opportunities/groups/ | Get opportunities groups
[**get_opportunities_groups_group_id**](OpportunitiesApi.md#get_opportunities_groups_group_id) | **GET** /opportunities/groups/{group_id}/ | Get opportunities group
[**get_opportunities_tasks**](OpportunitiesApi.md#get_opportunities_tasks) | **GET** /opportunities/tasks/ | Get opportunities tasks
[**get_opportunities_tasks_task_id**](OpportunitiesApi.md#get_opportunities_tasks_task_id) | **GET** /opportunities/tasks/{task_id}/ | Get opportunities task


# **get_characters_character_id_opportunities**
> Array&lt;GetCharactersCharacterIdOpportunities200Ok&gt; get_characters_character_id_opportunities(character_id, opts)

Get a character's completed tasks

Return a list of tasks finished by a character  --- Alternate route: `/v1/characters/{character_id}/opportunities/`  Alternate route: `/legacy/characters/{character_id}/opportunities/`  Alternate route: `/dev/characters/{character_id}/opportunities/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::OpportunitiesApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get a character's completed tasks
  result = api_instance.get_characters_character_id_opportunities(character_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling OpportunitiesApi->get_characters_character_id_opportunities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdOpportunities200Ok&gt;**](GetCharactersCharacterIdOpportunities200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunities_groups**
> Array&lt;Integer&gt; get_opportunities_groups(opts)

Get opportunities groups

Return a list of opportunities groups  --- Alternate route: `/v1/opportunities/groups/`  Alternate route: `/legacy/opportunities/groups/`  Alternate route: `/dev/opportunities/groups/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::OpportunitiesApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get opportunities groups
  result = api_instance.get_opportunities_groups(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling OpportunitiesApi->get_opportunities_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunities_groups_group_id**
> GetOpportunitiesGroupsGroupIdOk get_opportunities_groups_group_id(group_id, opts)

Get opportunities group

Return information of an opportunities group  --- Alternate route: `/v1/opportunities/groups/{group_id}/`  Alternate route: `/legacy/opportunities/groups/{group_id}/`  Alternate route: `/dev/opportunities/groups/{group_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::OpportunitiesApi.new

group_id = 56 # Integer | ID of an opportunities group

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get opportunities group
  result = api_instance.get_opportunities_groups_group_id(group_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling OpportunitiesApi->get_opportunities_groups_group_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| ID of an opportunities group | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetOpportunitiesGroupsGroupIdOk**](GetOpportunitiesGroupsGroupIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunities_tasks**
> Array&lt;Integer&gt; get_opportunities_tasks(opts)

Get opportunities tasks

Return a list of opportunities tasks  --- Alternate route: `/v1/opportunities/tasks/`  Alternate route: `/legacy/opportunities/tasks/`  Alternate route: `/dev/opportunities/tasks/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::OpportunitiesApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get opportunities tasks
  result = api_instance.get_opportunities_tasks(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling OpportunitiesApi->get_opportunities_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_opportunities_tasks_task_id**
> GetOpportunitiesTasksTaskIdOk get_opportunities_tasks_task_id(task_id, opts)

Get opportunities task

Return information of an opportunities task  --- Alternate route: `/v1/opportunities/tasks/{task_id}/`  Alternate route: `/legacy/opportunities/tasks/{task_id}/`  Alternate route: `/dev/opportunities/tasks/{task_id}/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::OpportunitiesApi.new

task_id = 56 # Integer | ID of an opportunities task

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get opportunities task
  result = api_instance.get_opportunities_tasks_task_id(task_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling OpportunitiesApi->get_opportunities_tasks_task_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **Integer**| ID of an opportunities task | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetOpportunitiesTasksTaskIdOk**](GetOpportunitiesTasksTaskIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



