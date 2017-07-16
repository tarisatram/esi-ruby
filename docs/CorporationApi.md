# EsiClient::CorporationApi

All URIs are relative to *https://esi.tech.ccp.is/latest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_corporations_corporation_id**](CorporationApi.md#get_corporations_corporation_id) | **GET** /corporations/{corporation_id}/ | Get corporation information
[**get_corporations_corporation_id_alliancehistory**](CorporationApi.md#get_corporations_corporation_id_alliancehistory) | **GET** /corporations/{corporation_id}/alliancehistory/ | Get alliance history
[**get_corporations_corporation_id_icons**](CorporationApi.md#get_corporations_corporation_id_icons) | **GET** /corporations/{corporation_id}/icons/ | Get corporation icon
[**get_corporations_corporation_id_members**](CorporationApi.md#get_corporations_corporation_id_members) | **GET** /corporations/{corporation_id}/members/ | Get corporation members
[**get_corporations_corporation_id_roles**](CorporationApi.md#get_corporations_corporation_id_roles) | **GET** /corporations/{corporation_id}/roles/ | Get corporation member roles
[**get_corporations_corporation_id_structures**](CorporationApi.md#get_corporations_corporation_id_structures) | **GET** /corporations/{corporation_id}/structures/ | Get corporation structures
[**get_corporations_names**](CorporationApi.md#get_corporations_names) | **GET** /corporations/names/ | Get corporation names
[**get_corporations_npccorps**](CorporationApi.md#get_corporations_npccorps) | **GET** /corporations/npccorps/ | Get npc corporations
[**put_corporations_corporation_id_structures_structure_id**](CorporationApi.md#put_corporations_corporation_id_structures_structure_id) | **PUT** /corporations/{corporation_id}/structures/{structure_id}/ | Update structure vulnerability schedule


# **get_corporations_corporation_id**
> GetCorporationsCorporationIdOk get_corporations_corporation_id(corporation_id, opts)

Get corporation information

Public information about a corporation  --- Alternate route: `/v3/corporations/{corporation_id}/`  Alternate route: `/dev/corporations/{corporation_id}/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation information
  result = api_instance.get_corporations_corporation_id(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_corporation_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCorporationsCorporationIdOk**](GetCorporationsCorporationIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_alliancehistory**
> Array&lt;GetCorporationsCorporationIdAlliancehistory200Ok&gt; get_corporations_corporation_id_alliancehistory(corporation_id, opts)

Get alliance history

Get a list of all the alliances a corporation has been a member of  --- Alternate route: `/v1/corporations/{corporation_id}/alliancehistory/`  Alternate route: `/legacy/corporations/{corporation_id}/alliancehistory/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get alliance history
  result = api_instance.get_corporations_corporation_id_alliancehistory(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_corporation_id_alliancehistory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdAlliancehistory200Ok&gt;**](GetCorporationsCorporationIdAlliancehistory200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_icons**
> GetCorporationsCorporationIdIconsOk get_corporations_corporation_id_icons(corporation_id, opts)

Get corporation icon

Get the icon urls for a corporation  --- Alternate route: `/v1/corporations/{corporation_id}/icons/`  Alternate route: `/legacy/corporations/{corporation_id}/icons/`  Alternate route: `/dev/corporations/{corporation_id}/icons/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation icon
  result = api_instance.get_corporations_corporation_id_icons(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_corporation_id_icons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCorporationsCorporationIdIconsOk**](GetCorporationsCorporationIdIconsOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_members**
> Array&lt;GetCorporationsCorporationIdMembers200Ok&gt; get_corporations_corporation_id_members(corporation_id, opts)

Get corporation members

Read the current list of members if the calling character is a member.  --- Alternate route: `/v2/corporations/{corporation_id}/members/`  Alternate route: `/legacy/corporations/{corporation_id}/members/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation members
  result = api_instance.get_corporations_corporation_id_members(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_corporation_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdMembers200Ok&gt;**](GetCorporationsCorporationIdMembers200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_roles**
> Array&lt;GetCorporationsCorporationIdRoles200Ok&gt; get_corporations_corporation_id_roles(corporation_id, opts)

Get corporation member roles

Return the roles of all members if the character has the personnel manager role or any grantable role.  --- Alternate route: `/v1/corporations/{corporation_id}/roles/`  Alternate route: `/legacy/corporations/{corporation_id}/roles/`  Alternate route: `/dev/corporations/{corporation_id}/roles/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation member roles
  result = api_instance.get_corporations_corporation_id_roles(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_corporation_id_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdRoles200Ok&gt;**](GetCorporationsCorporationIdRoles200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_corporation_id_structures**
> Array&lt;GetCorporationsCorporationIdStructures200Ok&gt; get_corporations_corporation_id_structures(corporation_id, opts)

Get corporation structures

Get a list of corporation structures  --- Alternate route: `/v1/corporations/{corporation_id}/structures/`  Alternate route: `/legacy/corporations/{corporation_id}/structures/`  Alternate route: `/dev/corporations/{corporation_id}/structures/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  language: "en-us", # String | Language to use in the response
  page: 1, # Integer | Which page of results to return
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation structures
  result = api_instance.get_corporations_corporation_id_structures(corporation_id, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_corporation_id_structures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **language** | **String**| Language to use in the response | [optional] [default to en-us]
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdStructures200Ok&gt;**](GetCorporationsCorporationIdStructures200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_names**
> Array&lt;GetCorporationsNames200Ok&gt; get_corporations_names(corporation_ids, opts)

Get corporation names

Resolve a set of corporation IDs to corporation names  --- Alternate route: `/v1/corporations/names/`  Alternate route: `/legacy/corporations/names/`  --- This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CorporationApi.new

corporation_ids = [56] # Array<Integer> | A comma separated list of corporation IDs

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get corporation names
  result = api_instance.get_corporations_names(corporation_ids, opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_names: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A comma separated list of corporation IDs | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCorporationsNames200Ok&gt;**](GetCorporationsNames200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_corporations_npccorps**
> Array&lt;Integer&gt; get_corporations_npccorps(opts)

Get npc corporations

Get a list of npc corporations  --- Alternate route: `/v1/corporations/npccorps/`  Alternate route: `/legacy/corporations/npccorps/`  Alternate route: `/dev/corporations/npccorps/`  --- This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-ruby'

api_instance = EsiClient::CorporationApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get npc corporations
  result = api_instance.get_corporations_npccorps(opts)
  p result
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->get_corporations_npccorps: #{e}"
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



# **put_corporations_corporation_id_structures_structure_id**
> put_corporations_corporation_id_structures_structure_id(corporation_idnew_schedule, structure_id, opts)

Update structure vulnerability schedule

Update the vulnerability window schedule of a corporation structure  --- Alternate route: `/v1/corporations/{corporation_id}/structures/{structure_id}/`  Alternate route: `/legacy/corporations/{corporation_id}/structures/{structure_id}/`  Alternate route: `/dev/corporations/{corporation_id}/structures/{structure_id}/` 

### Example
```ruby
# load the gem
require 'esi-ruby'
# setup authorization
EsiClient.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = EsiClient::CorporationApi.new

corporation_id = 56 # Integer | An EVE corporation ID

new_schedule = [EsiClient::PutCorporationsCorporationIdStructuresStructureIdNewSchedule.new] # Array<PutCorporationsCorporationIdStructuresStructureIdNewSchedule> | New vulnerability window schedule for the structure

structure_id = 789 # Integer | A structure ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update structure vulnerability schedule
  api_instance.put_corporations_corporation_id_structures_structure_id(corporation_idnew_schedule, structure_id, opts)
rescue EsiClient::ApiError => e
  puts "Exception when calling CorporationApi->put_corporations_corporation_id_structures_structure_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **new_schedule** | [**Array&lt;PutCorporationsCorporationIdStructuresStructureIdNewSchedule&gt;**](PutCorporationsCorporationIdStructuresStructureIdNewSchedule.md)| New vulnerability window schedule for the structure | 
 **structure_id** | **Integer**| A structure ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



